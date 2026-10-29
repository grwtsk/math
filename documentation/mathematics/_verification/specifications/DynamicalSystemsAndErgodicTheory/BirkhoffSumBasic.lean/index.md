# Verification target: Birkhoff Sum Basic

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5ba875b420a4e26fc9798424aafa95734cb64bbd",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant26e79c72e8b74df5a754d73dc9dabcefb71bb7c69d49a57b290ef4aec2a19510.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../DynamicalSystemsAndErgodicTheory/BirkhoffSumBasic.lean/index.md) · [Full source](../../../../DynamicalSystemsAndErgodicTheory/BirkhoffSumBasic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5ba875b420a4e26fc9798424aafa95734cb64bbd`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant26e79c72e8b74df5a754d73dc9dabcefb71bb7c69d49a57b290ef4aec2a19510.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant26e79c72e8b74df5a754d73dc9dabcefb71bb7c69d49a57b290ef4aec2a19510.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Dynamics.FixedPoints.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.BigOperators.Group.Finset.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [birkhoffSum](../../../../DynamicalSystemsAndErgodicTheory/BirkhoffSumBasic.lean/declarations/birkhoffsum.md) | 27 | `declaration-track:72ff14fe5925062a033d76b5bd6e6cd85fe8f44507c2784310f0aab21b10cc68` |
| 2 | `theorem` | [birkhoffSum_zero](../../../../DynamicalSystemsAndErgodicTheory/BirkhoffSumBasic.lean/declarations/birkhoffsum-zero.md) | 29 | `result-track:1b702de14d8060f970f65b3e4108b23a08ba1a738e9f46c2c5e271344fdc14d6` |
| 3 | `theorem` | [birkhoffSum_zero'](../../../../DynamicalSystemsAndErgodicTheory/BirkhoffSumBasic.lean/declarations/birkhoffsum-zero-source-edition-2.md) | 33 | `result-track:4922e6374a0645853e01ada05e47c75cf0bf63ff8125c07d57fd5ccf37bb4406` |
| 4 | `theorem` | [birkhoffSum_one](../../../../DynamicalSystemsAndErgodicTheory/BirkhoffSumBasic.lean/declarations/birkhoffsum-one-source-edition-2.md) | 36 | `result-track:8d9373f24dcbcee90a2b5f01ea6984a59e8b3e943e9c572b6e573ae85674bc86` |
| 5 | `theorem` | [birkhoffSum_one'](../../../../DynamicalSystemsAndErgodicTheory/BirkhoffSumBasic.lean/declarations/birkhoffsum-one.md) | 40 | `result-track:607b9ac6d1fbfa110e351fc32d5cb2098f4bc3dd8f1999402cd5e486eec27766` |
| 6 | `theorem` | [birkhoffSum_succ](../../../../DynamicalSystemsAndErgodicTheory/BirkhoffSumBasic.lean/declarations/birkhoffsum-succ.md) | 43 | `result-track:28dea437f460b7e1cec6b602c13bb4e9e7a6cb17817af2fb2726e621efd35a55` |
| 7 | `theorem` | [birkhoffSum_succ'](../../../../DynamicalSystemsAndErgodicTheory/BirkhoffSumBasic.lean/declarations/birkhoffsum-succ-source-edition-2.md) | 47 | `result-track:aa5bb6532d48b58effb6d6c840b4b03d70571c608543dd9ab9b1311ec7681c0e` |
| 8 | `theorem` | [birkhoffSum_add](../../../../DynamicalSystemsAndErgodicTheory/BirkhoffSumBasic.lean/declarations/birkhoffsum-add.md) | 51 | `result-track:a623771be4bec1846b9117a0dd04d31f0ac28943613cdf17d1254a5d5367ff75` |
| 9 | `theorem` | [Function.IsFixedPt.birkhoffSum_eq](../../../../DynamicalSystemsAndErgodicTheory/BirkhoffSumBasic.lean/declarations/function-isfixedpt-birkhoffsum-eq.md) | 55 | `result-track:d97fd4db8e1201b31e54733e575307888f11df95c4bedc26e5bb59edb69cfc08` |
| 10 | `theorem` | [map_birkhoffSum](../../../../DynamicalSystemsAndErgodicTheory/BirkhoffSumBasic.lean/declarations/map-birkhoffsum.md) | 59 | `result-track:ee7ae1972a13a060fce7f9325b0611cd8f0554894e616dfaecc1e3712d9096a3` |
| 11 | `theorem` | [birkhoffSum_apply_sub_birkhoffSum](../../../../DynamicalSystemsAndErgodicTheory/BirkhoffSumBasic.lean/declarations/birkhoffsum-apply-sub-birkhoffsum.md) | 73 | `result-track:62c59238a5488c4ae77f5c56ef9869ab61840fbabd03590d08cd3b9eab23ed4c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d0edef21744f3398dbb3a03b94b013828fb126eaaae736ccae6afeb22c5fff93 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant26e79c72e8b74df5a754d73dc9dabcefb71bb7c69d49a57b290ef4aec2a19510.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant26e79c72e8b74df5a754d73dc9dabcefb71bb7c69d49a57b290ef4aec2a19510.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
