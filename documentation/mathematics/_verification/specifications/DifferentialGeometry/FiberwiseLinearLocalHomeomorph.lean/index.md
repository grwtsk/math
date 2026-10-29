# Verification target: Fiberwise Linear Local Homeomorph

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "809580bde548bbb432f34084fe214a1b745c4c32",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/FiberwiseLinear/Variantfa13b1e0501a5e67d9c1fac92927fe682d1d551ad88a060168fe4c95bcf8d8ef.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../DifferentialGeometry/FiberwiseLinearLocalHomeomorph.lean/index.md) · [Full source](../../../../DifferentialGeometry/FiberwiseLinearLocalHomeomorph.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `809580bde548bbb432f34084fe214a1b745c4c32`.

Source path: `GRWTSK/Topology/GeneralTopology/FiberwiseLinear/Variantfa13b1e0501a5e67d9c1fac92927fe682d1d551ad88a060168fe4c95bcf8d8ef.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/FiberwiseLinear/Variantfa13b1e0501a5e67d9c1fac92927fe682d1d551ad88a060168fe4c95bcf8d8ef.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Geometry.Manifold.ContMDiff` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [localHomeomorph](../../../../DifferentialGeometry/FiberwiseLinearLocalHomeomorph.lean/declarations/localhomeomorph.md) | 35 | `declaration-track:88a5a36eb4025eb798f5e5213a8237dbfa8c517798867d772bf156b1f032a905` |
| 2 | `theorem` | [trans_localHomeomorph_apply](../../../../DifferentialGeometry/FiberwiseLinearLocalHomeomorph.lean/declarations/trans-localhomeomorph-apply.md) | 61 | `result-track:533d398309705b22677f40011d04ba6055ec2ebf76bbfffca896200ab6c09242` |
| 3 | `theorem` | [source_trans_localHomeomorph](../../../../DifferentialGeometry/FiberwiseLinearLocalHomeomorph.lean/declarations/source-trans-localhomeomorph.md) | 74 | `result-track:347b9544453e3ed37a9c4a94592f9036c2c28089de7506c6b4f2d08a1161e288` |
| 4 | `theorem` | [target_trans_localHomeomorph](../../../../DifferentialGeometry/FiberwiseLinearLocalHomeomorph.lean/declarations/target-trans-localhomeomorph.md) | 87 | `result-track:9a47d787904863bb485d040cbe0fdc5f6ab0ae12a5df23c96d813a1f1ba9b17c` |
| 5 | `theorem` | [SmoothFiberwiseLinear.locality_aux₁](../../../../DifferentialGeometry/FiberwiseLinearLocalHomeomorph.lean/declarations/smoothfiberwiselinear-locality-aux.md) | 109 | `result-track:c4c1cc6ae15d9889d9399836f327fcb275e3664a55a61d9a0d376943c1ed8bd3` |
| 6 | `theorem` | [SmoothFiberwiseLinear.locality_aux₂](../../../../DifferentialGeometry/FiberwiseLinearLocalHomeomorph.lean/declarations/smoothfiberwiselinear-locality-aux-source-edition-2.md) | 161 | `result-track:fb997905fe0f444813f1056f9d1d5a9b857c4f9e135b31f5af8a09a1ca1a90e3` |
| 7 | `theorem` | [mem_aux](../../../../DifferentialGeometry/FiberwiseLinearLocalHomeomorph.lean/declarations/mem-aux.md) | 226 | `result-track:0a3634477025dc95cb40ee1823d19003b35805b0986653528386d02c0108e8d6` |
| 8 | `def` | [smoothFiberwiseLinear](../../../../DifferentialGeometry/FiberwiseLinearLocalHomeomorph.lean/declarations/smoothfiberwiselinear.md) | 244 | `declaration-track:8503bb91c6cc9fb01bff112261e2ce128f135a265981389e0722a35b74281ad7` |
| 9 | `theorem` | [mem_smoothFiberwiseLinear_iff](../../../../DifferentialGeometry/FiberwiseLinearLocalHomeomorph.lean/declarations/mem-smoothfiberwiselinear-iff.md) | 296 | `result-track:e32f10d669541b430dced3993b17cb3a22d40dcd2120bcccb52ff9f9ea73dbfe` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c8b3ea11929b038a6edadaad31de2ddaa6d504a7cd6616054bab3053e09d5b11 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/FiberwiseLinear/Variantfa13b1e0501a5e67d9c1fac92927fe682d1d551ad88a060168fe4c95bcf8d8ef.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/FiberwiseLinear/Variantfa13b1e0501a5e67d9c1fac92927fe682d1d551ad88a060168fe4c95bcf8d8ef.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
