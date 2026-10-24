# Verification target: GRWTSK.Topology.MetricTopology.Basic.Variant6a54db368ef47336a1d3948914e162be20982421964a399e4801e5148e9b080d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3deffc070711beca59042f4bcfdd1f2ef3b1aacf",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/MetricTopology/Basic/Variant6a54db368ef47336a1d3948914e162be20982421964a399e4801e5148e9b080d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/MetricTopology/Basic/Variant6a54db368ef47336a1d3948914e162be20982421964a399e4801e5148e9b080d.lean/index.md) · [Full source](../../../../../mathematics/Topology/MetricTopology/Basic/Variant6a54db368ef47336a1d3948914e162be20982421964a399e4801e5148e9b080d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3deffc070711beca59042f4bcfdd1f2ef3b1aacf`.

Source path: `GRWTSK/Topology/MetricTopology/Basic/Variant6a54db368ef47336a1d3948914e162be20982421964a399e4801e5148e9b080d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/MetricTopology/Basic/Variant6a54db368ef47336a1d3948914e162be20982421964a399e4801e5148e9b080d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Function.AEEqFun.DomAct` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Function.LpSpace.Indicator` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../mathematics/Topology/MetricTopology/Basic/Variant6a54db368ef47336a1d3948914e162be20982421964a399e4801e5148e9b080d.lean/declarations/instance--bc55dee46145c2fd8f803c0f.md) | 32 | `declaration-track:bc55dee46145c2fd8f803c0f88ca5888b424231bd60dbb347d29a93164420269` |
| 2 | `theorem` | [smul_Lp_val](../../../../../mathematics/Topology/MetricTopology/Basic/Variant6a54db368ef47336a1d3948914e162be20982421964a399e4801e5148e9b080d.lean/declarations/smul-lp-val--4e9b2f4794273acfa53fa0ed.md) | 36 | `result-track:4e9b2f4794273acfa53fa0edfea809b8a0bc68d6ca1844e3c698557c74ab85f4` |
| 3 | `theorem` | [smul_Lp_ae_eq](../../../../../mathematics/Topology/MetricTopology/Basic/Variant6a54db368ef47336a1d3948914e162be20982421964a399e4801e5148e9b080d.lean/declarations/smul-lp-ae-eq--2b446b9cecafad5a543a2c2f.md) | 39 | `result-track:2b446b9cecafad5a543a2c2f8b10377e7533e70b126dee976fb7945a0f555165` |
| 4 | `theorem` | [mk_smul_toLp](../../../../../mathematics/Topology/MetricTopology/Basic/Variant6a54db368ef47336a1d3948914e162be20982421964a399e4801e5148e9b080d.lean/declarations/mk-smul-tolp--0a81fbfce66ba401c1ab05d6.md) | 43 | `result-track:0a81fbfce66ba401c1ab05d649853db251d9f46f3ac436c332dadd1ba6b80214` |
| 5 | `theorem` | [smul_Lp_const](../../../../../mathematics/Topology/MetricTopology/Basic/Variant6a54db368ef47336a1d3948914e162be20982421964a399e4801e5148e9b080d.lean/declarations/smul-lp-const--181c1a7697d46376361fc82e.md) | 49 | `result-track:181c1a7697d46376361fc82ee223faaa55a2afcf4a6cd83dbca74154f295c231` |
| 6 | `theorem` | [mk_smul_indicatorConstLp](../../../../../mathematics/Topology/MetricTopology/Basic/Variant6a54db368ef47336a1d3948914e162be20982421964a399e4801e5148e9b080d.lean/declarations/mk-smul-indicatorconstlp--cd046ab010f37e0cb4565aaa.md) | 54 | `result-track:cd046ab010f37e0cb4565aaa9aec2a492b282d2d4336b90e6b2890f950a6dad3` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/Topology/MetricTopology/Basic/Variant6a54db368ef47336a1d3948914e162be20982421964a399e4801e5148e9b080d.lean/declarations/instance--6c28fa7c0809d4b053708ca3.md) | 61 | `declaration-track:6c28fa7c0809d4b053708ca3ecc50fda9e62903b85f0f8c39ab7b45664b69fdf` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/Topology/MetricTopology/Basic/Variant6a54db368ef47336a1d3948914e162be20982421964a399e4801e5148e9b080d.lean/declarations/instance--26ae3d513b114dbd1eb5779f.md) | 65 | `declaration-track:26ae3d513b114dbd1eb5779f86448ac1640783998d19381a755e3459fbd56607` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/Topology/MetricTopology/Basic/Variant6a54db368ef47336a1d3948914e162be20982421964a399e4801e5148e9b080d.lean/declarations/instance--ec8b590545ba4f4cdacac982.md) | 69 | `declaration-track:ec8b590545ba4f4cdacac9820886be475d0f60eafa0114e8f50550ff1f81cd43` |
| 10 | `theorem` | [smul_Lp_add](../../../../../mathematics/Topology/MetricTopology/Basic/Variant6a54db368ef47336a1d3948914e162be20982421964a399e4801e5148e9b080d.lean/declarations/smul-lp-add--4ff2694e34837512ca643ee7.md) | 78 | `result-track:4ff2694e34837512ca643ee7df9308a86f71104f6ea60cad4b7a675410f2373d` |
| 11 | `theorem` | [smul_Lp_zero](../../../../../mathematics/Topology/MetricTopology/Basic/Variant6a54db368ef47336a1d3948914e162be20982421964a399e4801e5148e9b080d.lean/declarations/smul-lp-zero--065321b0c4b5badaace426e7.md) | 83 | `result-track:065321b0c4b5badaace426e7dedc23ee9068d8be4433417ff039ca174ccf8b19` |
| 12 | `theorem` | [smul_Lp_neg](../../../../../mathematics/Topology/MetricTopology/Basic/Variant6a54db368ef47336a1d3948914e162be20982421964a399e4801e5148e9b080d.lean/declarations/smul-lp-neg--dd6a825fee73c2efbe115915.md) | 86 | `result-track:dd6a825fee73c2efbe1159154c38181f76b440c753c995d65daedfd739145e61` |
| 13 | `theorem` | [smul_Lp_sub](../../../../../mathematics/Topology/MetricTopology/Basic/Variant6a54db368ef47336a1d3948914e162be20982421964a399e4801e5148e9b080d.lean/declarations/smul-lp-sub--8477feec5d74bc1885c2401e.md) | 90 | `result-track:8477feec5d74bc1885c2401eea4cec2994c5f23ed48b73eb24fc908f0057cb17` |
| 14 | `instance` | [(anonymous)](../../../../../mathematics/Topology/MetricTopology/Basic/Variant6a54db368ef47336a1d3948914e162be20982421964a399e4801e5148e9b080d.lean/declarations/instance--2bbb7b1f9419c3a9ef020463.md) | 93 | `declaration-track:2bbb7b1f9419c3a9ef020463c65deb7a6cdd092d4f1c913efd316ee2c1759285` |
| 15 | `theorem` | [norm_smul_Lp](../../../../../mathematics/Topology/MetricTopology/Basic/Variant6a54db368ef47336a1d3948914e162be20982421964a399e4801e5148e9b080d.lean/declarations/norm-smul-lp--0662ea1279d7158a02f573c0.md) | 99 | `result-track:0662ea1279d7158a02f573c025d568c99e9b20483bbe5f57e9193fde2c54e691` |
| 16 | `theorem` | [nnnorm_smul_Lp](../../../../../mathematics/Topology/MetricTopology/Basic/Variant6a54db368ef47336a1d3948914e162be20982421964a399e4801e5148e9b080d.lean/declarations/nnnorm-smul-lp--1bcd3d55d67703ce0a5e1388.md) | 103 | `result-track:1bcd3d55d67703ce0a5e1388fdcca4e6c2237710e7492ddb29a1a8d6fee7d216` |
| 17 | `theorem` | [dist_smul_Lp](../../../../../mathematics/Topology/MetricTopology/Basic/Variant6a54db368ef47336a1d3948914e162be20982421964a399e4801e5148e9b080d.lean/declarations/dist-smul-lp--c566afc8eae83c5890ee4a33.md) | 107 | `result-track:c566afc8eae83c5890ee4a33d802d81971eaf0e55596a5fc98101e1bf5477372` |
| 18 | `theorem` | [edist_smul_Lp](../../../../../mathematics/Topology/MetricTopology/Basic/Variant6a54db368ef47336a1d3948914e162be20982421964a399e4801e5148e9b080d.lean/declarations/edist-smul-lp--80a1ea45d3e6203439bbf454.md) | 111 | `result-track:80a1ea45d3e6203439bbf454be98d7ad3e71b78334ba823f31b58543f455d60d` |
| 19 | `instance` | [(anonymous)](../../../../../mathematics/Topology/MetricTopology/Basic/Variant6a54db368ef47336a1d3948914e162be20982421964a399e4801e5148e9b080d.lean/declarations/instance--d72eaae9f9bbb197da013f8a.md) | 117 | `declaration-track:d72eaae9f9bbb197da013f8ae608d38ca4fb53799efdde0f195f7ed51fd0e545` |
| 20 | `instance` | [(anonymous)](../../../../../mathematics/Topology/MetricTopology/Basic/Variant6a54db368ef47336a1d3948914e162be20982421964a399e4801e5148e9b080d.lean/declarations/instance--9e2a4731dcdc1fb72d170304.md) | 126 | `declaration-track:9e2a4731dcdc1fb72d1703046d03e84be464de20e0c620c95855b088b1323c48` |
| 21 | `instance` | [(anonymous)](../../../../../mathematics/Topology/MetricTopology/Basic/Variant6a54db368ef47336a1d3948914e162be20982421964a399e4801e5148e9b080d.lean/declarations/instance--73a54c760f6b553576ad2413.md) | 128 | `declaration-track:73a54c760f6b553576ad2413efa5ca17ae98d300563a9c8f290c2ed29df823fb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
