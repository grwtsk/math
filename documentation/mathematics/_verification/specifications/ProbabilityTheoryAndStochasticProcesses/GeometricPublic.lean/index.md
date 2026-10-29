# Verification target: Geometric Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ad1cf17ae08402eeadfe2d99563aab439da39a3b",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/Geometric/Variant731aacb20405b2c814cf11007e484e2eed13075dc51c70ce8af3864e4de1a082.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../ProbabilityTheoryAndStochasticProcesses/GeometricPublic.lean/index.md) · [Full source](../../../../ProbabilityTheoryAndStochasticProcesses/GeometricPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ad1cf17ae08402eeadfe2d99563aab439da39a3b`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/Geometric/Variant731aacb20405b2c814cf11007e484e2eed13075dc51c70ce8af3864e4de1a082.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/Geometric/Variant731aacb20405b2c814cf11007e484e2eed13075dc51c70ce8af3864e4de1a082.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Integral.Bochner.SumMeasure` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [geometricMeasure](../../../../ProbabilityTheoryAndStochasticProcesses/GeometricPublic.lean/declarations/geometricmeasure.md) | 52 | `declaration-track:3bfbcd9eaf6a0a260ff01d40923d09ba53ba1048ed2436f40f806ecf57a14c97` |
| 2 | `lemma` | [geometricMeasure_eq](../../../../ProbabilityTheoryAndStochasticProcesses/GeometricPublic.lean/declarations/geometricmeasure-eq.md) | 58 | `result-track:b3a7785b449313846f173c05420191bc05575d45335b4e0b0af17fb911e6e147` |
| 3 | `lemma` | [geometricMeasure_nonneg](../../../../ProbabilityTheoryAndStochasticProcesses/GeometricPublic.lean/declarations/geometricmeasure-nonneg.md) | 65 | `result-track:7a9060f224ad9662aaa3eebe751b5533e3d1198998b7be79bca25651db5fb73a` |
| 4 | `lemma` | [geometricMeasure_pos](../../../../ProbabilityTheoryAndStochasticProcesses/GeometricPublic.lean/declarations/geometricmeasure-pos.md) | 68 | `result-track:1a44a5f7f4c9552346da7a4a289a185896ca0a69bc43dbc811f5d08f774a97c7` |
| 5 | `lemma` | [geometricMeasure_singleton](../../../../ProbabilityTheoryAndStochasticProcesses/GeometricPublic.lean/declarations/geometricmeasure-singleton.md) | 71 | `result-track:a671aefb0b73c85461fdec65ce033b781ce3c8ee5513cd8345049f4207582497` |
| 6 | `lemma` | [geometricMeasure_real_singleton](../../../../ProbabilityTheoryAndStochasticProcesses/GeometricPublic.lean/declarations/geometricmeasure-real-singleton.md) | 75 | `result-track:0418dde6118a955c417a780df4c5c912f4d0ebe78d7c800d40b190bab694a675` |
| 7 | `lemma` | [geometricMeasure_real_singleton_pos](../../../../ProbabilityTheoryAndStochasticProcesses/GeometricPublic.lean/declarations/geometricmeasure-real-singleton-pos.md) | 80 | `result-track:6f19b4b01d721f0f3c6300be36b24c84ea9b7650fceb52dc702796118c74de7d` |
| 8 | `lemma` | [hasSum_one_geometricMeasure](../../../../ProbabilityTheoryAndStochasticProcesses/GeometricPublic.lean/declarations/hassum-one-geometricmeasure.md) | 85 | `result-track:2e1b5e719722127259a8b140cc503981e417279b6846ac30e6972fcd97d6256a` |
| 9 | `instance` | [isProbabilityMeasure_geometricMeasure](../../../../ProbabilityTheoryAndStochasticProcesses/GeometricPublic.lean/declarations/isprobabilitymeasure-geometricmeasure.md) | 90 | `declaration-track:cb01c02da1aa44531f072ecd4b5ffdd4782a7c28420d39c1a5f9f5fdb5a3f02e` |
| 10 | `lemma` | [integrable_geometricMeasure_iff](../../../../ProbabilityTheoryAndStochasticProcesses/GeometricPublic.lean/declarations/integrable-geometricmeasure-iff.md) | 102 | `result-track:d6b9fe16f9f8d6bbdb4ec41051e5b583e2867f860c318bdb38c16f7a7d835a68` |
| 11 | `lemma` | [hasSum_integral_geometricMeasure](../../../../ProbabilityTheoryAndStochasticProcesses/GeometricPublic.lean/declarations/hassum-integral-geometricmeasure.md) | 110 | `result-track:525d06851aac593dbc30e689aab3bc324764151710470490d850565a32e3c960` |
| 12 | `lemma` | [integral_geometricMeasure'](../../../../ProbabilityTheoryAndStochasticProcesses/GeometricPublic.lean/declarations/integral-geometricmeasure-source-edition-2.md) | 126 | `result-track:3dbadd894070c223442ec7155dee2f8583b3b0ffb50872abc4a795907c6361ac` |
| 13 | `lemma` | [integral_geometricMeasure](../../../../ProbabilityTheoryAndStochasticProcesses/GeometricPublic.lean/declarations/integral-geometricmeasure.md) | 137 | `result-track:2e55dc1aab13827ac1ed42c8350576d18f0e5e3024259ccf7a46944bf39d0097` |
| 14 | `def` | [geometricPMFReal](../../../../ProbabilityTheoryAndStochasticProcesses/GeometricPublic.lean/declarations/geometricpmfreal.md) | 152 | `declaration-track:2ff034b99b98687179f3f259b3d30491f870b5ee5bbab730ac1d352d465f36e6` |
| 15 | `lemma` | [geometricPMFRealSum](../../../../ProbabilityTheoryAndStochasticProcesses/GeometricPublic.lean/declarations/geometricpmfrealsum.md) | 155 | `result-track:8eaaea1a49439dbc16725996ab4fd7fc10450b3f80f3a3c9bdbfd87dd989dfcc` |
| 16 | `lemma` | [geometricPMFReal_pos](../../../../ProbabilityTheoryAndStochasticProcesses/GeometricPublic.lean/declarations/geometricpmfreal-pos.md) | 165 | `result-track:98f3ad128c035ce70d2d4badd39461f5ec292787f1de385d0fc6eb5e6f646af2` |
| 17 | `lemma` | [geometricPMFReal_nonneg](../../../../ProbabilityTheoryAndStochasticProcesses/GeometricPublic.lean/declarations/geometricpmfreal-nonneg.md) | 171 | `result-track:012405dbf8f90066166c1e7c211f1435094f3f32dff1b2d3cf3e81df559bb08c` |
| 18 | `def` | [geometricPMF](../../../../ProbabilityTheoryAndStochasticProcesses/GeometricPublic.lean/declarations/geometricpmf.md) | 179 | `declaration-track:295e56a03d2abd51133ffd167fe30082510f40a2be3fbbda79e9df6faa3297bd` |
| 19 | `lemma` | [measurable_geometricPMFReal](../../../../ProbabilityTheoryAndStochasticProcesses/GeometricPublic.lean/declarations/measurable-geometricpmfreal.md) | 187 | `result-track:b831e9c43d7aa1a25c00aef487bd8910c3aed489632e0637ca3460387f5f275d` |
| 20 | `lemma` | [stronglyMeasurable_geometricPMFReal](../../../../ProbabilityTheoryAndStochasticProcesses/GeometricPublic.lean/declarations/stronglymeasurable-geometricpmfreal.md) | 191 | `result-track:c0dd4a2bf424984cb01f3de6c87c75a9e0969c8eb26a08a764b1a78fe0dfbc5d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=594aa21e0ed4f6fc2f01e8a2c7475fb649c3015f24258e711bb14cc0d9e0ad0e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/Integration/Geometric/Variant731aacb20405b2c814cf11007e484e2eed13075dc51c70ce8af3864e4de1a082.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/Integration/Geometric/Variant731aacb20405b2c814cf11007e484e2eed13075dc51c70ce8af3864e4de1a082.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
