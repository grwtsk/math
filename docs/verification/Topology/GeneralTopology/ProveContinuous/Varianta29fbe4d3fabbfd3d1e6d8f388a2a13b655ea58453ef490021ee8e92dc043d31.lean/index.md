# Verification target: GRWTSK.Topology.GeneralTopology.ProveContinuous.Varianta29fbe4d3fabbfd3d1e6d8f388a2a13b655ea58453ef490021ee8e92dc043d31

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9ece43ee45b550d676b203990572320b242e0349",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/ProveContinuous/Varianta29fbe4d3fabbfd3d1e6d8f388a2a13b655ea58453ef490021ee8e92dc043d31.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/ProveContinuous/Varianta29fbe4d3fabbfd3d1e6d8f388a2a13b655ea58453ef490021ee8e92dc043d31.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/ProveContinuous/Varianta29fbe4d3fabbfd3d1e6d8f388a2a13b655ea58453ef490021ee8e92dc043d31.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9ece43ee45b550d676b203990572320b242e0349`.

Source path: `GRWTSK/Topology/GeneralTopology/ProveContinuous/Varianta29fbe4d3fabbfd3d1e6d8f388a2a13b655ea58453ef490021ee8e92dc043d31.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/ProveContinuous/Varianta29fbe4d3fabbfd3d1e6d8f388a2a13b655ea58453ef490021ee8e92dc043d31.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean` — import line 11; external provider; requires a separately pinned dependency.
- `LeanCert.Meta.ToExpr` — import line 12; external provider; requires a separately pinned dependency.
- `LeanCert.Meta.ProveSupported` — import line 13; external provider; requires a separately pinned dependency.
- `LeanCert.Core.Expr` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.ContinuousOn` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Trigonometric.Basic` — import line 16; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.ExpDeriv` — import line 17; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [LExpr](../../../../../mathematics/Topology/GeneralTopology/ProveContinuous/Varianta29fbe4d3fabbfd3d1e6d8f388a2a13b655ea58453ef490021ee8e92dc043d31.lean/declarations/lexpr--b4182c90a27d941a2efe175e.md) | 55 | `declaration-track:b4182c90a27d941a2efe175e8335c32c76b016efb241386b5bad96222e49a2ee` |
| 2 | `inductive` | [ExprContinuousCore](../../../../../mathematics/Topology/GeneralTopology/ProveContinuous/Varianta29fbe4d3fabbfd3d1e6d8f388a2a13b655ea58453ef490021ee8e92dc043d31.lean/declarations/exprcontinuouscore--0d7a2d74c0ba9a60cd870711.md) | 68 | `declaration-track:0d7a2d74c0ba9a60cd87071192110a362e57d8c7f4cd701db47030620e8763c4` |
| 3 | `theorem` | [ExprContinuousCore.toSupported](../../../../../mathematics/Topology/GeneralTopology/ProveContinuous/Varianta29fbe4d3fabbfd3d1e6d8f388a2a13b655ea58453ef490021ee8e92dc043d31.lean/declarations/exprcontinuouscore-tosupported--79a19db3dcad5f6b683d1e93.md) | 85 | `result-track:79a19db3dcad5f6b683d1e93ab9e976971f3154df7d35459ade9566f3f2637b4` |
| 4 | `theorem` | [exprContinuousCore_continuousOn](../../../../../mathematics/Topology/GeneralTopology/ProveContinuous/Varianta29fbe4d3fabbfd3d1e6d8f388a2a13b655ea58453ef490021ee8e92dc043d31.lean/declarations/exprcontinuouscore-continuouson--e92b5a815b48d0e66619e919.md) | 115 | `result-track:e92b5a815b48d0e66619e919ed55f16bce778994bd861543ba261e010ee310e2` |
| 5 | `theorem` | [exprContinuousCore_continuousOn_Icc](../../../../../mathematics/Topology/GeneralTopology/ProveContinuous/Varianta29fbe4d3fabbfd3d1e6d8f388a2a13b655ea58453ef490021ee8e92dc043d31.lean/declarations/exprcontinuouscore-continuouson-icc--7d8d5b6b3b7cb42736cfe37c.md) | 166 | `result-track:7d8d5b6b3b7cb42736cfe37ca85013f8317758699e14c0adf9074bf3eb4f2689` |
| 6 | `theorem` | [exprContinuousCore_continuousOn_interval](../../../../../mathematics/Topology/GeneralTopology/ProveContinuous/Varianta29fbe4d3fabbfd3d1e6d8f388a2a13b655ea58453ef490021ee8e92dc043d31.lean/declarations/exprcontinuouscore-continuouson-interval--5c356029adee0df29c6dfdac.md) | 172 | `result-track:5c356029adee0df29c6dfdac63dc02b80ce0d66dfe3045a0cc7657bfc1095f54` |
| 7 | `def` | [exprContinuousDomainValid](../../../../../mathematics/Topology/GeneralTopology/ProveContinuous/Varianta29fbe4d3fabbfd3d1e6d8f388a2a13b655ea58453ef490021ee8e92dc043d31.lean/declarations/exprcontinuousdomainvalid--10b6c62e184ef6c9490d30a1.md) | 185 | `declaration-track:10b6c62e184ef6c9490d30a1b12fb5a6ad21eb84b4fe671274cbd43acdb4062c` |
| 8 | `theorem` | [exprContinuousDomainValid_of_ExprSupported](../../../../../mathematics/Topology/GeneralTopology/ProveContinuous/Varianta29fbe4d3fabbfd3d1e6d8f388a2a13b655ea58453ef490021ee8e92dc043d31.lean/declarations/exprcontinuousdomainvalid-of-exprsupported--c8334a2cf54cfe75b4730a23.md) | 210 | `result-track:c8334a2cf54cfe75b4730a235bb2a759366c0fc34c79318654b889d90a8bbf2d` |
| 9 | `theorem` | [exprContinuousDomainValid_of_ExprContinuousCore](../../../../../mathematics/Topology/GeneralTopology/ProveContinuous/Varianta29fbe4d3fabbfd3d1e6d8f388a2a13b655ea58453ef490021ee8e92dc043d31.lean/declarations/exprcontinuousdomainvalid-of-exprcontinuouscore--1b6cb5fb31c2d56563de97b8.md) | 223 | `result-track:1b6cb5fb31c2d56563de97b8d456663586420ab4ed1dda61c7d08044a149d185` |
| 10 | `theorem` | [exprSupportedCore_continuousOn](../../../../../mathematics/Topology/GeneralTopology/ProveContinuous/Varianta29fbe4d3fabbfd3d1e6d8f388a2a13b655ea58453ef490021ee8e92dc043d31.lean/declarations/exprsupportedcore-continuouson--5f91de4540abfa498bd96a02.md) | 244 | `result-track:5f91de4540abfa498bd96a02046ec714546f78d60ef88da3a6b1615126b0fb7c` |
| 11 | `def` | [mkContinuousCoreProof](../../../../../mathematics/Topology/GeneralTopology/ProveContinuous/Varianta29fbe4d3fabbfd3d1e6d8f388a2a13b655ea58453ef490021ee8e92dc043d31.lean/declarations/mkcontinuouscoreproof--949c1871ad50f79dacb2afcb.md) | 347 | `declaration-track:949c1871ad50f79dacb2afcbe860e1f4faf3673e1eaf786b8522546fd9e6d32a` |
| 12 | `def` | [mkContinuousOnProof](../../../../../mathematics/Topology/GeneralTopology/ProveContinuous/Varianta29fbe4d3fabbfd3d1e6d8f388a2a13b655ea58453ef490021ee8e92dc043d31.lean/declarations/mkcontinuousonproof--eb6c6f70e3fc5bb40a7175b9.md) | 444 | `declaration-track:eb6c6f70e3fc5bb40a7175b9d5b620030a4053d3a6dd9f33ecdd9f8aab473a50` |
| 13 | `def` | [mkContinuousOnProofIcc](../../../../../mathematics/Topology/GeneralTopology/ProveContinuous/Varianta29fbe4d3fabbfd3d1e6d8f388a2a13b655ea58453ef490021ee8e92dc043d31.lean/declarations/mkcontinuousonprooficc--3560a6acf6d8a3fa361f940d.md) | 451 | `declaration-track:3560a6acf6d8a3fa361f940d8a48b0d121588095c7fc6f1e669235eba3e21106` |
| 14 | `elab` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/ProveContinuous/Varianta29fbe4d3fabbfd3d1e6d8f388a2a13b655ea58453ef490021ee8e92dc043d31.lean/declarations/elab--c3b10248457eaede1820b318.md) | 458 | `declaration-track:c3b10248457eaede1820b31864cb4f94285dbc577e567945e60331e08e0405a8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
