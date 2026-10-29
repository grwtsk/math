# Verification target: Transverse Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "426fd854d9f6eaae6be20b91a6b06966cb5d2213",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/SpecialFunctions/Transverse/Variant2fc0a43c0d80e365be6cb035a164db9536339556156dc18cdd0d2eed2cf09722.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../RealFunctions/TransverseNamespaced.lean/index.md) · [Full source](../../../../RealFunctions/TransverseNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `426fd854d9f6eaae6be20b91a6b06966cb5d2213`.

Source path: `GRWTSK/Analysis/SpecialFunctions/Transverse/Variant2fc0a43c0d80e365be6cb035a164db9536339556156dc18cdd0d2eed2cf09722.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/SpecialFunctions/Transverse/Variant2fc0a43c0d80e365be6cb035a164db9536339556156dc18cdd0d2eed2cf09722.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.PositiveAtlas.Grassmannian.BraidCoordinates` — import line 6; external provider; requires a separately pinned dependency.
- `FormalResearch.PositiveAtlas.Grassmannian.ToeplitzMinors` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Complex.Basic` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Trigonometric.Basic` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [reflect](../../../../RealFunctions/TransverseNamespaced.lean/declarations/reflect.md) | 27 | `declaration-track:5d6f2866967a86c0ac17e2c59d2db6e2e94991bab31ff0e33958f38265dca1f9` |
| 2 | `def` | [centeredSquare](../../../../RealFunctions/TransverseNamespaced.lean/declarations/centeredsquare.md) | 30 | `declaration-track:8e08b7ae3178a4666543acdf74dbd52d7ee217d8ae6687a3229cc100a8c5809c` |
| 3 | `def` | [displacement](../../../../RealFunctions/TransverseNamespaced.lean/declarations/displacement.md) | 33 | `declaration-track:42704d994b18308ac6ab85bc913301d64c9921bb819cd02db7c16a57fae73245` |
| 4 | `theorem` | [reflect_involutive](../../../../RealFunctions/TransverseNamespaced.lean/declarations/reflect-involutive.md) | 36 | `result-track:2964b21da2da50aabac91d8a19e1eee5ad6b3e345d8000e8ed41ae6608a0d404` |
| 5 | `theorem` | [displacement_reflect](../../../../RealFunctions/TransverseNamespaced.lean/declarations/displacement-reflect.md) | 40 | `result-track:51a0db62a276cce7831624f0831a270d8aa7e195971a63144bad2d554d2991b7` |
| 6 | `theorem` | [centeredSquare_one_sub](../../../../RealFunctions/TransverseNamespaced.lean/declarations/centeredsquare-one-sub.md) | 45 | `result-track:a6a18d57c30151a33cc118a50dda27d731afdf44dd9d5d346c0118e6af986954` |
| 7 | `theorem` | [centeredSquare_re](../../../../RealFunctions/TransverseNamespaced.lean/declarations/centeredsquare-re.md) | 50 | `result-track:3592ec43927d9d5dc67b2d83b5fc70ac364c508b04f45c26a3f747aeda49e5e3` |
| 8 | `theorem` | [centeredSquare_im](../../../../RealFunctions/TransverseNamespaced.lean/declarations/centeredsquare-im.md) | 55 | `result-track:71a70510662b45fc2cdff418c54cfc29c6bfcf17e534553e90da697d604aa8be` |
| 9 | `theorem` | [centeredSquare_im_zero_iff](../../../../RealFunctions/TransverseNamespaced.lean/declarations/centeredsquare-im-zero-iff.md) | 61 | `result-track:9f5c4edbeaf01320a75f8a99324983170baf68f7d46c7e3516f94684c5513aa6` |
| 10 | `theorem` | [centeredSquare_negative_axis_iff](../../../../RealFunctions/TransverseNamespaced.lean/declarations/centeredsquare-negative-axis-iff.md) | 73 | `result-track:cee7df11181b2038a5d1c209beed37eea4316b2bb79f5e35e00917ad77c3c094` |
| 11 | `theorem` | [two_reflection_laws](../../../../RealFunctions/TransverseNamespaced.lean/declarations/two-reflection-laws.md) | 86 | `result-track:08a0ced8337e94f4fbe15d8cb580d903c9143dacc9ee9eaac84c4c1def3292c2` |
| 12 | `def` | [phaseUnit](../../../../RealFunctions/TransverseNamespaced.lean/declarations/phaseunit.md) | 92 | `declaration-track:ed72db51d0f33294e2ece5f871506f9a0ee12a6f101a231e69745ba15b4abf5e` |
| 13 | `theorem` | [phaseUnit_positive](../../../../RealFunctions/TransverseNamespaced.lean/declarations/phaseunit-positive.md) | 95 | `result-track:d726289e13844efc27c4e40b87c8e6de1f91877ec3628ac546b409d7aae6dc2d` |
| 14 | `theorem` | [phase_normalization_preserves_pfInfinity](../../../../RealFunctions/TransverseNamespaced.lean/declarations/phase-normalization-preserves-pfinfinity.md) | 100 | `result-track:f592ed924bfee215fda0e71b9442f1c0efebc6034c5f7391d1a0bc7ab4fa4b5f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=3b56650e51f8d1a11870412e9048dd403af45cdce1dd98d8a59163f630145cad -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/SpecialFunctions/Transverse/Variant2fc0a43c0d80e365be6cb035a164db9536339556156dc18cdd0d2eed2cf09722.lean","GRWTSK/_verification/specifications/Analysis/SpecialFunctions/Transverse/Variant2fc0a43c0d80e365be6cb035a164db9536339556156dc18cdd0d2eed2cf09722.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
