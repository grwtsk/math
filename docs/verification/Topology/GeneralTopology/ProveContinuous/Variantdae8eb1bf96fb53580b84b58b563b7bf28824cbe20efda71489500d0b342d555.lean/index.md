# Verification target: GRWTSK.Topology.GeneralTopology.ProveContinuous.Variantdae8eb1bf96fb53580b84b58b563b7bf28824cbe20efda71489500d0b342d555

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0e853a96808a6b4861710db3f8229db8bd735dfd",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/ProveContinuous/Variantdae8eb1bf96fb53580b84b58b563b7bf28824cbe20efda71489500d0b342d555.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/ProveContinuous/Variantdae8eb1bf96fb53580b84b58b563b7bf28824cbe20efda71489500d0b342d555.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/ProveContinuous/Variantdae8eb1bf96fb53580b84b58b563b7bf28824cbe20efda71489500d0b342d555.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0e853a96808a6b4861710db3f8229db8bd735dfd`.

Source path: `GRWTSK/Topology/GeneralTopology/ProveContinuous/Variantdae8eb1bf96fb53580b84b58b563b7bf28824cbe20efda71489500d0b342d555.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/ProveContinuous/Variantdae8eb1bf96fb53580b84b58b563b7bf28824cbe20efda71489500d0b342d555.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean` — import line 6; external provider; requires a separately pinned dependency.
- `LeanCert.Meta.ToExpr` — import line 7; external provider; requires a separately pinned dependency.
- `LeanCert.Meta.ProveSupported` — import line 8; external provider; requires a separately pinned dependency.
- `LeanCert.Core.Expr` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.ContinuousOn` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Trigonometric.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.ExpDeriv` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [LExpr](../../../../../mathematics/Topology/GeneralTopology/ProveContinuous/Variantdae8eb1bf96fb53580b84b58b563b7bf28824cbe20efda71489500d0b342d555.lean/declarations/lexpr--29c570f745b799be7548886c.md) | 47 | `declaration-track:29c570f745b799be7548886c124686ae413e12ef32d016bab640c42098bf9ba4` |
| 2 | `inductive` | [ExprContinuousCore](../../../../../mathematics/Topology/GeneralTopology/ProveContinuous/Variantdae8eb1bf96fb53580b84b58b563b7bf28824cbe20efda71489500d0b342d555.lean/declarations/exprcontinuouscore--e6f42b20eaeb5443a8a7e340.md) | 60 | `declaration-track:e6f42b20eaeb5443a8a7e340b49db55d07b305cc7aed903f5291232b8189364e` |
| 3 | `theorem` | [ExprContinuousCore.toSupported](../../../../../mathematics/Topology/GeneralTopology/ProveContinuous/Variantdae8eb1bf96fb53580b84b58b563b7bf28824cbe20efda71489500d0b342d555.lean/declarations/exprcontinuouscore-tosupported--c4e21c3f498acb26e4ecc300.md) | 77 | `result-track:c4e21c3f498acb26e4ecc3007d05c1e5c927b7020abcab714b99e29d665f0fdc` |
| 4 | `theorem` | [exprContinuousCore_continuousOn](../../../../../mathematics/Topology/GeneralTopology/ProveContinuous/Variantdae8eb1bf96fb53580b84b58b563b7bf28824cbe20efda71489500d0b342d555.lean/declarations/exprcontinuouscore-continuouson--e29277071ed62f8585c802bb.md) | 107 | `result-track:e29277071ed62f8585c802bbea20176f2574c6f560c445d45a21005e7c7885c2` |
| 5 | `theorem` | [exprContinuousCore_continuousOn_Icc](../../../../../mathematics/Topology/GeneralTopology/ProveContinuous/Variantdae8eb1bf96fb53580b84b58b563b7bf28824cbe20efda71489500d0b342d555.lean/declarations/exprcontinuouscore-continuouson-icc--692a3edd4cbb20ab583e149f.md) | 158 | `result-track:692a3edd4cbb20ab583e149fe116a3dce2833b394cb42b69d5b046146ac56e67` |
| 6 | `theorem` | [exprContinuousCore_continuousOn_interval](../../../../../mathematics/Topology/GeneralTopology/ProveContinuous/Variantdae8eb1bf96fb53580b84b58b563b7bf28824cbe20efda71489500d0b342d555.lean/declarations/exprcontinuouscore-continuouson-interval--81cb34646cf85b53da472532.md) | 164 | `result-track:81cb34646cf85b53da472532acf24f60092da3f970a06f8fff3c5ea8279aba97` |
| 7 | `def` | [exprContinuousDomainValid](../../../../../mathematics/Topology/GeneralTopology/ProveContinuous/Variantdae8eb1bf96fb53580b84b58b563b7bf28824cbe20efda71489500d0b342d555.lean/declarations/exprcontinuousdomainvalid--6d4f28353a008beace0d5841.md) | 177 | `declaration-track:6d4f28353a008beace0d58411904c4fef853bb54c1b828c678dc39961604aec0` |
| 8 | `theorem` | [exprContinuousDomainValid_of_ExprSupported](../../../../../mathematics/Topology/GeneralTopology/ProveContinuous/Variantdae8eb1bf96fb53580b84b58b563b7bf28824cbe20efda71489500d0b342d555.lean/declarations/exprcontinuousdomainvalid-of-exprsupported--fc66f2989c3145b9be76aa85.md) | 202 | `result-track:fc66f2989c3145b9be76aa857362716e001b7fc64a7f035656b88ffe9a114159` |
| 9 | `theorem` | [exprContinuousDomainValid_of_ExprContinuousCore](../../../../../mathematics/Topology/GeneralTopology/ProveContinuous/Variantdae8eb1bf96fb53580b84b58b563b7bf28824cbe20efda71489500d0b342d555.lean/declarations/exprcontinuousdomainvalid-of-exprcontinuouscore--c3f307ded9c1e723d0416055.md) | 215 | `result-track:c3f307ded9c1e723d0416055747e0e28c31d14447aabe0b8eecd1722fe5955ad` |
| 10 | `theorem` | [exprSupportedCore_continuousOn](../../../../../mathematics/Topology/GeneralTopology/ProveContinuous/Variantdae8eb1bf96fb53580b84b58b563b7bf28824cbe20efda71489500d0b342d555.lean/declarations/exprsupportedcore-continuouson--7cec971d8274744642215e18.md) | 236 | `result-track:7cec971d8274744642215e1880e9e90aa5c3131360bd9756e76390b89fd86da8` |
| 11 | `def` | [mkContinuousCoreProof](../../../../../mathematics/Topology/GeneralTopology/ProveContinuous/Variantdae8eb1bf96fb53580b84b58b563b7bf28824cbe20efda71489500d0b342d555.lean/declarations/mkcontinuouscoreproof--0988b641f19d360c3100cee5.md) | 339 | `declaration-track:0988b641f19d360c3100cee57cc2b81d7b0d15b3c1f08ba60bdbf1101a3f3d98` |
| 12 | `def` | [mkContinuousOnProof](../../../../../mathematics/Topology/GeneralTopology/ProveContinuous/Variantdae8eb1bf96fb53580b84b58b563b7bf28824cbe20efda71489500d0b342d555.lean/declarations/mkcontinuousonproof--6659146b7f57ea98f5180c84.md) | 436 | `declaration-track:6659146b7f57ea98f5180c84449e71263b1999d0d0f168a4efa8fb9cf7311ab1` |
| 13 | `def` | [mkContinuousOnProofIcc](../../../../../mathematics/Topology/GeneralTopology/ProveContinuous/Variantdae8eb1bf96fb53580b84b58b563b7bf28824cbe20efda71489500d0b342d555.lean/declarations/mkcontinuousonprooficc--5a42146bc9f5c45fd3547bba.md) | 443 | `declaration-track:5a42146bc9f5c45fd3547bba783c73899009cd30146cbe5d401c45ceac0f1c79` |
| 14 | `elab` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/ProveContinuous/Variantdae8eb1bf96fb53580b84b58b563b7bf28824cbe20efda71489500d0b342d555.lean/declarations/elab--eb954bec6547d1473e2f41bd.md) | 450 | `declaration-track:eb954bec6547d1473e2f41bd38277df4a2e699417a77bdac1067a04058c0cd9b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
