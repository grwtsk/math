# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SeamClosed.Variant9c3e06146b66f32048d61bdc98727aa44bd89c00d79986aae59783720bd84589

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3b1574b966a7bdb526138e9060350721b33be07b",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SeamClosed/Variant9c3e06146b66f32048d61bdc98727aa44bd89c00d79986aae59783720bd84589.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../../../../NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SeamClosed/Variant9c3e06146b66f32048d61bdc98727aa44bd89c00d79986aae59783720bd84589.lean/index.md) · [Full source](../../../../../../../../../../NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SeamClosed/Variant9c3e06146b66f32048d61bdc98727aa44bd89c00d79986aae59783720bd84589.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3b1574b966a7bdb526138e9060350721b33be07b`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SeamClosed/Variant9c3e06146b66f32048d61bdc98727aa44bd89c00d79986aae59783720bd84589.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SeamClosed/Variant9c3e06146b66f32048d61bdc98727aa44bd89c00d79986aae59783720bd84589.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Zeta23.Statement.Seam` — import line 19; external provider; requires a separately pinned dependency.
- `Zeta23.ZetaReflect` — import line 20; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [zetaSeam](../../../../../../../../../../NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SeamClosed/Variant9c3e06146b66f32048d61bdc98727aa44bd89c00d79986aae59783720bd84589.lean/declarations/zetaseam--f18f421c2bfebec8cf8f9746.md) | 30 | `result-track:f18f421c2bfebec8cf8f974664c354be8e4ced3bbfa9baec1f362c40b0a59426` |
| 2 | `def` | [zetaZeroConfig](../../../../../../../../../../NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SeamClosed/Variant9c3e06146b66f32048d61bdc98727aa44bd89c00d79986aae59783720bd84589.lean/declarations/zetazeroconfig--5bbdb36069e64f0f530f7700.md) | 34 | `declaration-track:5bbdb36069e64f0f530f7700864611bc1315ec84783ebac232a604aac102fb71` |
| 3 | `lemma` | [zetaZeroConfig_carrier](../../../../../../../../../../NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SeamClosed/Variant9c3e06146b66f32048d61bdc98727aa44bd89c00d79986aae59783720bd84589.lean/declarations/zetazeroconfig-carrier--b49bed96fb23a3f9570a9055.md) | 36 | `result-track:b49bed96fb23a3f9570a9055f158c237f6ae13a147f025dcdc65b26765bfcb02` |
| 4 | `lemma` | [zetaZeroConfig_mult](../../../../../../../../../../NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SeamClosed/Variant9c3e06146b66f32048d61bdc98727aa44bd89c00d79986aae59783720bd84589.lean/declarations/zetazeroconfig-mult--11e35c9bab17861feb8daf9b.md) | 37 | `result-track:11e35c9bab17861feb8daf9bdc69c232a1d2ffc3a19eb97eb2b1b1a634358d8c` |
| 5 | `lemma` | [zetaZeroConfig_N](../../../../../../../../../../NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SeamClosed/Variant9c3e06146b66f32048d61bdc98727aa44bd89c00d79986aae59783720bd84589.lean/declarations/zetazeroconfig-n--b1653e5166077548dd3b5523.md) | 39 | `result-track:b1653e5166077548dd3b55237731c22412f9549aec29c83e58694573a01d5e7e` |
| 6 | `lemma` | [zetaZeroConfig_N0star](../../../../../../../../../../NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SeamClosed/Variant9c3e06146b66f32048d61bdc98727aa44bd89c00d79986aae59783720bd84589.lean/declarations/zetazeroconfig-n0star--c69e3a3fc24f1d41bb300413.md) | 41 | `result-track:c69e3a3fc24f1d41bb300413df7dda68e6adaac83d695fe58e1f613df7ab5932` |
| 7 | `lemma` | [zetaZeroConfig_N0s](../../../../../../../../../../NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SeamClosed/Variant9c3e06146b66f32048d61bdc98727aa44bd89c00d79986aae59783720bd84589.lean/declarations/zetazeroconfig-n0s--960f137dd282f27bbc68593e.md) | 43 | `result-track:960f137dd282f27bbc68593e812a8bce7375a68db3b6262cc08405d20a318c77` |
| 8 | `lemma` | [zetaZeroConfig_Nd](../../../../../../../../../../NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SeamClosed/Variant9c3e06146b66f32048d61bdc98727aa44bd89c00d79986aae59783720bd84589.lean/declarations/zetazeroconfig-nd--3a4a264c6b88ebc013d9b640.md) | 45 | `result-track:3a4a264c6b88ebc013d9b6403fcc926f9972e78dfd204a1cb41942e2f1e09d64` |
| 9 | `theorem` | [trivial_chain₀](../../../../../../../../../../NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SeamClosed/Variant9c3e06146b66f32048d61bdc98727aa44bd89c00d79986aae59783720bd84589.lean/declarations/trivial-chain--cedbd75b739b567899b762d3.md) | 49 | `result-track:cedbd75b739b567899b762d3a03fe54fca18c4457f517bad1713e4a8fa174898` |
| 10 | `theorem` | [zerosIn_finite](../../../../../../../../../../NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SeamClosed/Variant9c3e06146b66f32048d61bdc98727aa44bd89c00d79986aae59783720bd84589.lean/declarations/zerosin-finite--30d15740080c171161dc1ff2.md) | 55 | `result-track:30d15740080c171161dc1ff25be2cb9315bfdbbf62334749b2e7e6e7996eef6d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=799abb49984e5ff2d0311cde5d1e0e05786ceef8161f8f97ee87f7fc21229b56 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SeamClosed/Variant9c3e06146b66f32048d61bdc98727aa44bd89c00d79986aae59783720bd84589.lean","GRWTSK/_verification/specifications/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SeamClosed/Variant9c3e06146b66f32048d61bdc98727aa44bd89c00d79986aae59783720bd84589.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
