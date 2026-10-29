# Verification target: GRWTSK.Analysis.MeasureTheory.Kernel.Variant7be1166a745bedd40fc8a86b80cdf4da3fdf6ec7a6971ff85ad972da4c54e1f7

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "22dd4bb2aeda76f2171a32b4ceca24a16d7ae406",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/Kernel/Variant7be1166a745bedd40fc8a86b80cdf4da3fdf6ec7a6971ff85ad972da4c54e1f7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../Analysis/MeasureTheory/Kernel/Variant7be1166a745bedd40fc8a86b80cdf4da3fdf6ec7a6971ff85ad972da4c54e1f7.lean/index.md) · [Full source](../../../../../../Analysis/MeasureTheory/Kernel/Variant7be1166a745bedd40fc8a86b80cdf4da3fdf6ec7a6971ff85ad972da4c54e1f7.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `22dd4bb2aeda76f2171a32b4ceca24a16d7ae406`.

Source path: `GRWTSK/Analysis/MeasureTheory/Kernel/Variant7be1166a745bedd40fc8a86b80cdf4da3fdf6ec7a6971ff85ad972da4c54e1f7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/Kernel/Variant7be1166a745bedd40fc8a86b80cdf4da3fdf6ec7a6971ff85ad972da4c54e1f7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `SpectralProof.Core.FourierDecay` — import line 6; external provider; requires a separately pinned dependency.
- `SpectralProof.Core.Weight` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Function.L2Space` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.ExpLog` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Kt](../../../../../../Analysis/MeasureTheory/Kernel/Variant7be1166a745bedd40fc8a86b80cdf4da3fdf6ec7a6971ff85ad972da4c54e1f7.lean/declarations/kt--a94edcc34f61aee713440c6f.md) | 29 | `declaration-track:a94edcc34f61aee713440c6f2bab7e75d48a85be550baf72c66c381a748327a1` |
| 2 | `def` | [KtWeighted](../../../../../../Analysis/MeasureTheory/Kernel/Variant7be1166a745bedd40fc8a86b80cdf4da3fdf6ec7a6971ff85ad972da4c54e1f7.lean/declarations/ktweighted--1a163ff46409530b01c1ae22.md) | 39 | `declaration-track:1a163ff46409530b01c1ae22684cc26a54e7a3686b51a4bf70df234e53960d6c` |
| 3 | `lemma` | [measurable_KtWeighted](../../../../../../Analysis/MeasureTheory/Kernel/Variant7be1166a745bedd40fc8a86b80cdf4da3fdf6ec7a6971ff85ad972da4c54e1f7.lean/declarations/measurable-ktweighted--85c4328fd8f5be0c11adc183.md) | 46 | `result-track:85c4328fd8f5be0c11adc1832b9e6693908e76a7dd90f5197004ace21927fbdc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c1dc4dfae2c8f2889d7a16831c1b04330a6044c9dc2979d56136cc0072a5d7ec -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/MeasureTheory/Kernel/Variant7be1166a745bedd40fc8a86b80cdf4da3fdf6ec7a6971ff85ad972da4c54e1f7.lean","GRWTSK/_verification/specifications/Analysis/MeasureTheory/Kernel/Variant7be1166a745bedd40fc8a86b80cdf4da3fdf6ec7a6971ff85ad972da4c54e1f7.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
