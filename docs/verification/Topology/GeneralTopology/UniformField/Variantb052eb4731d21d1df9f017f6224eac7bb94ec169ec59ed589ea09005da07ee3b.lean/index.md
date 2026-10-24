# Verification target: GRWTSK.Topology.GeneralTopology.UniformField.Variantb052eb4731d21d1df9f017f6224eac7bb94ec169ec59ed589ea09005da07ee3b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "465d8a3acfc84bdc2e5e99644544c1cf16bae838",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/UniformField/Variantb052eb4731d21d1df9f017f6224eac7bb94ec169ec59ed589ea09005da07ee3b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/UniformField/Variantb052eb4731d21d1df9f017f6224eac7bb94ec169ec59ed589ea09005da07ee3b.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/UniformField/Variantb052eb4731d21d1df9f017f6224eac7bb94ec169ec59ed589ea09005da07ee3b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `465d8a3acfc84bdc2e5e99644544c1cf16bae838`.

Source path: `GRWTSK/Topology/GeneralTopology/UniformField/Variantb052eb4731d21d1df9f017f6224eac7bb94ec169ec59ed589ea09005da07ee3b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/UniformField/Variantb052eb4731d21d1df9f017f6224eac7bb94ec169ec59ed589ea09005da07ee3b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.SimpleRing.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Field` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.UniformRing` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [CompletableTopField](../../../../../mathematics/Topology/GeneralTopology/UniformField/Variantb052eb4731d21d1df9f017f6224eac7bb94ec169ec59ed589ea09005da07ee3b.lean/declarations/completabletopfield--1a7188e9efefaebfa8984470.md) | 58 | `declaration-track:1a7188e9efefaebfa898447008eedc0acebbd5cc3d1425de5f7c20c9847db5e7` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/UniformField/Variantb052eb4731d21d1df9f017f6224eac7bb94ec169ec59ed589ea09005da07ee3b.lean/declarations/instance--ca581f988da174c0441471f3.md) | 65 | `declaration-track:ca581f988da174c0441471f382e23d14018acaaaae5b9a5f0df7c90346974eee` |
| 3 | `def` | [hatInv](../../../../../mathematics/Topology/GeneralTopology/UniformField/Variantb052eb4731d21d1df9f017f6224eac7bb94ec169ec59ed589ea09005da07ee3b.lean/declarations/hatinv--cafc60a5b27bb601bbf906ec.md) | 71 | `declaration-track:cafc60a5b27bb601bbf906ecdfb71136590831431d6d61ba58da4f11068172ef` |
| 4 | `theorem` | [continuous_hatInv](../../../../../mathematics/Topology/GeneralTopology/UniformField/Variantb052eb4731d21d1df9f017f6224eac7bb94ec169ec59ed589ea09005da07ee3b.lean/declarations/continuous-hatinv--9f7077cd8600084629b88fb8.md) | 75 | `result-track:9f7077cd8600084629b88fb890ee0dee87227887862a57783d42cd588015face` |
| 5 | `instance` | [instInvCompletion](../../../../../mathematics/Topology/GeneralTopology/UniformField/Variantb052eb4731d21d1df9f017f6224eac7bb94ec169ec59ed589ea09005da07ee3b.lean/declarations/instinvcompletion--2745c88053d24e261422badd.md) | 105 | `declaration-track:2745c88053d24e261422badd13240b1e23ca218f3d26b07608ca8242834ddd81` |
| 6 | `theorem` | [hatInv_extends](../../../../../mathematics/Topology/GeneralTopology/UniformField/Variantb052eb4731d21d1df9f017f6224eac7bb94ec169ec59ed589ea09005da07ee3b.lean/declarations/hatinv-extends--d422b6576dd86f14841a7aad.md) | 110 | `result-track:d422b6576dd86f14841a7aad25c1f58577afe0d30d0a1a1160e6de3bf39a333b` |
| 7 | `theorem` | [coe_inv](../../../../../mathematics/Topology/GeneralTopology/UniformField/Variantb052eb4731d21d1df9f017f6224eac7bb94ec169ec59ed589ea09005da07ee3b.lean/declarations/coe-inv--1606587f9676277a4b929c6c.md) | 116 | `result-track:1606587f9676277a4b929c6c202953f75df3e69fff4b5e6f5fbd01dcbc05c1f8` |
| 8 | `theorem` | [mul_hatInv_cancel](../../../../../mathematics/Topology/GeneralTopology/UniformField/Variantb052eb4731d21d1df9f017f6224eac7bb94ec169ec59ed589ea09005da07ee3b.lean/declarations/mul-hatinv-cancel--8aee99ed208c96a598b2e522.md) | 129 | `result-track:8aee99ed208c96a598b2e5228f8367616b64b64348c77bf83923010936fd1465` |
| 9 | `instance` | [instField](../../../../../mathematics/Topology/GeneralTopology/UniformField/Variantb052eb4731d21d1df9f017f6224eac7bb94ec169ec59ed589ea09005da07ee3b.lean/declarations/instfield--c744f46077b323a8957b469c.md) | 155 | `declaration-track:c744f46077b323a8957b469c46f72d89bc2a9f57cb927dc7179cbefb5817bd47` |
| 10 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/UniformField/Variantb052eb4731d21d1df9f017f6224eac7bb94ec169ec59ed589ea09005da07ee3b.lean/declarations/instance--1eddac339cd3c2b69156ee8c.md) | 165 | `declaration-track:1eddac339cd3c2b69156ee8c107a665a3dc011d9d96f9124f6978544d7ba7f2d` |
| 11 | `instance` | [Subfield.completableTopField](../../../../../mathematics/Topology/GeneralTopology/UniformField/Variantb052eb4731d21d1df9f017f6224eac7bb94ec169ec59ed589ea09005da07ee3b.lean/declarations/subfield-completabletopfield--230ca7fdbe6edca234dba3b7.md) | 184 | `declaration-track:230ca7fdbe6edca234dba3b78cd8e3e351e2a916309f5df7977cb7a0a7ad465e` |
| 12 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/UniformField/Variantb052eb4731d21d1df9f017f6224eac7bb94ec169ec59ed589ea09005da07ee3b.lean/declarations/instance--c0887a6072ef8bb99a854420.md) | 193 | `declaration-track:c0887a6072ef8bb99a854420515c88a59e85e31bf480cd9c60f85d731f7bb776` |
| 13 | `theorem` | [IsUniformInducing.completableTopField](../../../../../mathematics/Topology/GeneralTopology/UniformField/Variantb052eb4731d21d1df9f017f6224eac7bb94ec169ec59ed589ea09005da07ee3b.lean/declarations/isuniforminducing-completabletopfield--d801aa8f3b954cd9afeab721.md) | 212 | `result-track:d801aa8f3b954cd9afeab72113c5fa5cdcdd63920b720f0a986d8027838ba391` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
