# Verification target: GRWTSK.Topology.MetricTopology.Basic.Variantebd791b4430b47e8d716005228e19913b39b008247aa2fe9f5a70c49128c9dd2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "08eac5c4742aebe6bc53a42576cbac82e877d3ae",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/MetricTopology/Basic/Variantebd791b4430b47e8d716005228e19913b39b008247aa2fe9f5a70c49128c9dd2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/MetricTopology/Basic/Variantebd791b4430b47e8d716005228e19913b39b008247aa2fe9f5a70c49128c9dd2.lean/index.md) · [Full source](../../../../../mathematics/Topology/MetricTopology/Basic/Variantebd791b4430b47e8d716005228e19913b39b008247aa2fe9f5a70c49128c9dd2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `08eac5c4742aebe6bc53a42576cbac82e877d3ae`.

Source path: `GRWTSK/Topology/MetricTopology/Basic/Variantebd791b4430b47e8d716005228e19913b39b008247aa2fe9f5a70c49128c9dd2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/MetricTopology/Basic/Variantebd791b4430b47e8d716005228e19913b39b008247aa2fe9f5a70c49128c9dd2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Function.AEEqFun.DomAct` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Function.LpSpace.Indicator` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../mathematics/Topology/MetricTopology/Basic/Variantebd791b4430b47e8d716005228e19913b39b008247aa2fe9f5a70c49128c9dd2.lean/declarations/instance--9a89632db156285a66928121.md) | 40 | `declaration-track:9a89632db156285a669281210ecee4a90981a7f13e32f897e7f444057e81b332` |
| 2 | `theorem` | [smul_Lp_val](../../../../../mathematics/Topology/MetricTopology/Basic/Variantebd791b4430b47e8d716005228e19913b39b008247aa2fe9f5a70c49128c9dd2.lean/declarations/smul-lp-val--6a6817a17e3a67dc61690fa2.md) | 44 | `result-track:6a6817a17e3a67dc61690fa2f7a2af828c044c583104195318421498a348c5da` |
| 3 | `theorem` | [smul_Lp_ae_eq](../../../../../mathematics/Topology/MetricTopology/Basic/Variantebd791b4430b47e8d716005228e19913b39b008247aa2fe9f5a70c49128c9dd2.lean/declarations/smul-lp-ae-eq--0f3b880c97e6b418b1193caa.md) | 47 | `result-track:0f3b880c97e6b418b1193caa62f69969a499f358f411560c1d79a8231261990c` |
| 4 | `theorem` | [mk_smul_toLp](../../../../../mathematics/Topology/MetricTopology/Basic/Variantebd791b4430b47e8d716005228e19913b39b008247aa2fe9f5a70c49128c9dd2.lean/declarations/mk-smul-tolp--29dbbbdcd59ebf4501d5f611.md) | 51 | `result-track:29dbbbdcd59ebf4501d5f611a9685c369c38d222f6d915cf41b8d7b11e07c877` |
| 5 | `theorem` | [smul_Lp_const](../../../../../mathematics/Topology/MetricTopology/Basic/Variantebd791b4430b47e8d716005228e19913b39b008247aa2fe9f5a70c49128c9dd2.lean/declarations/smul-lp-const--d1d79920aa07000e53726b00.md) | 57 | `result-track:d1d79920aa07000e53726b0032b05f0ea9305a9f9f80548a446d685ff7ae1bc9` |
| 6 | `theorem` | [mk_smul_indicatorConstLp](../../../../../mathematics/Topology/MetricTopology/Basic/Variantebd791b4430b47e8d716005228e19913b39b008247aa2fe9f5a70c49128c9dd2.lean/declarations/mk-smul-indicatorconstlp--5f2bfb3651ac212fa0c31ac1.md) | 62 | `result-track:5f2bfb3651ac212fa0c31ac1aa8d8ab22fc76b64198e29e3bfac53c521f4c0ec` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/Topology/MetricTopology/Basic/Variantebd791b4430b47e8d716005228e19913b39b008247aa2fe9f5a70c49128c9dd2.lean/declarations/instance--5125b24e363d1cf1fbab5188.md) | 69 | `declaration-track:5125b24e363d1cf1fbab5188923e8db82f1cd86edcd7fccb1274a2a43ad5ca21` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/Topology/MetricTopology/Basic/Variantebd791b4430b47e8d716005228e19913b39b008247aa2fe9f5a70c49128c9dd2.lean/declarations/instance--6fd4efd2227565b3fcf9a96b.md) | 73 | `declaration-track:6fd4efd2227565b3fcf9a96bbc1650ab7664f6670e5f20c74e20a1f67975aa3e` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/Topology/MetricTopology/Basic/Variantebd791b4430b47e8d716005228e19913b39b008247aa2fe9f5a70c49128c9dd2.lean/declarations/instance--6b0c44503ee59f8415cce99a.md) | 77 | `declaration-track:6b0c44503ee59f8415cce99a8e6e31602382af0d93b78c355b61d12d76c8f2f5` |
| 10 | `theorem` | [smul_Lp_add](../../../../../mathematics/Topology/MetricTopology/Basic/Variantebd791b4430b47e8d716005228e19913b39b008247aa2fe9f5a70c49128c9dd2.lean/declarations/smul-lp-add--593c40918ec3607d83d9774b.md) | 86 | `result-track:593c40918ec3607d83d9774bb5ac98666e77c84adf10533ac449bcbedd1093e4` |
| 11 | `theorem` | [smul_Lp_zero](../../../../../mathematics/Topology/MetricTopology/Basic/Variantebd791b4430b47e8d716005228e19913b39b008247aa2fe9f5a70c49128c9dd2.lean/declarations/smul-lp-zero--f0e8ceddee4c24be9ad804b7.md) | 91 | `result-track:f0e8ceddee4c24be9ad804b7b55b22867e11846b50bbbbde5f35ca5a7fa3bdc9` |
| 12 | `theorem` | [smul_Lp_neg](../../../../../mathematics/Topology/MetricTopology/Basic/Variantebd791b4430b47e8d716005228e19913b39b008247aa2fe9f5a70c49128c9dd2.lean/declarations/smul-lp-neg--5e9c41b988056e350ddbd325.md) | 94 | `result-track:5e9c41b988056e350ddbd325ac405b017701fee93ebe3ddc26a04cf406bfb048` |
| 13 | `theorem` | [smul_Lp_sub](../../../../../mathematics/Topology/MetricTopology/Basic/Variantebd791b4430b47e8d716005228e19913b39b008247aa2fe9f5a70c49128c9dd2.lean/declarations/smul-lp-sub--0da0904ba50a5f61491c2ade.md) | 98 | `result-track:0da0904ba50a5f61491c2adeb92b330b18e937d4b8845d5fe02a9835be6a442c` |
| 14 | `instance` | [(anonymous)](../../../../../mathematics/Topology/MetricTopology/Basic/Variantebd791b4430b47e8d716005228e19913b39b008247aa2fe9f5a70c49128c9dd2.lean/declarations/instance--d63d1c1091661aab9fb473a6.md) | 101 | `declaration-track:d63d1c1091661aab9fb473a683df0ef9d9599a71b21e5da0862e1befd7799342` |
| 15 | `theorem` | [norm_smul_Lp](../../../../../mathematics/Topology/MetricTopology/Basic/Variantebd791b4430b47e8d716005228e19913b39b008247aa2fe9f5a70c49128c9dd2.lean/declarations/norm-smul-lp--1d8fd5c5afba941b7f83c007.md) | 107 | `result-track:1d8fd5c5afba941b7f83c0077e181638acb137a9b1b838fc573819c5db0791c0` |
| 16 | `theorem` | [nnnorm_smul_Lp](../../../../../mathematics/Topology/MetricTopology/Basic/Variantebd791b4430b47e8d716005228e19913b39b008247aa2fe9f5a70c49128c9dd2.lean/declarations/nnnorm-smul-lp--7846d87387e43d34599538a1.md) | 111 | `result-track:7846d87387e43d34599538a167f42ffdeeec59efc99b4fe387037b74689e4cc1` |
| 17 | `theorem` | [dist_smul_Lp](../../../../../mathematics/Topology/MetricTopology/Basic/Variantebd791b4430b47e8d716005228e19913b39b008247aa2fe9f5a70c49128c9dd2.lean/declarations/dist-smul-lp--ad8ace04ac1677dea9ee7867.md) | 115 | `result-track:ad8ace04ac1677dea9ee78676596f7b1acb576aecbe2b16d2c7f94b195cf108d` |
| 18 | `theorem` | [edist_smul_Lp](../../../../../mathematics/Topology/MetricTopology/Basic/Variantebd791b4430b47e8d716005228e19913b39b008247aa2fe9f5a70c49128c9dd2.lean/declarations/edist-smul-lp--29216690390897422c97a3bc.md) | 119 | `result-track:29216690390897422c97a3bc003f78ed3606850d5a4c8ea98fee8d93192d2554` |
| 19 | `instance` | [(anonymous)](../../../../../mathematics/Topology/MetricTopology/Basic/Variantebd791b4430b47e8d716005228e19913b39b008247aa2fe9f5a70c49128c9dd2.lean/declarations/instance--04e9d91078294bcc8542ed6e.md) | 125 | `declaration-track:04e9d91078294bcc8542ed6e2811497a2f29e28a0e4849695ac0ef255dfad936` |
| 20 | `instance` | [(anonymous)](../../../../../mathematics/Topology/MetricTopology/Basic/Variantebd791b4430b47e8d716005228e19913b39b008247aa2fe9f5a70c49128c9dd2.lean/declarations/instance--c55fc62c5b1bae753b43a841.md) | 134 | `declaration-track:c55fc62c5b1bae753b43a84120650e042168371711e1856ba5a2b20375ffe0f1` |
| 21 | `instance` | [(anonymous)](../../../../../mathematics/Topology/MetricTopology/Basic/Variantebd791b4430b47e8d716005228e19913b39b008247aa2fe9f5a70c49128c9dd2.lean/declarations/instance--1c5dd9d208211a5fc469bfaf.md) | 136 | `declaration-track:1c5dd9d208211a5fc469bfafad3e224eb44c0ab959b84d546e3ec66fc747cd84` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
