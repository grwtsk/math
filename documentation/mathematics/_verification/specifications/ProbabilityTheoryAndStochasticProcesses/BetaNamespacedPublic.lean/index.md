# Verification target: Beta Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ffd6ac6848d42a294866ee3186bf41916e0529e3",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/Beta/Variant8f65d6ee0a8d909b55220e729bcfa416304a1271cfa59dc835ecd1d0ed171d2d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../ProbabilityTheoryAndStochasticProcesses/BetaNamespacedPublic.lean/index.md) · [Full source](../../../../ProbabilityTheoryAndStochasticProcesses/BetaNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ffd6ac6848d42a294866ee3186bf41916e0529e3`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/Beta/Variant8f65d6ee0a8d909b55220e729bcfa416304a1271cfa59dc835ecd1d0ed171d2d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/Beta/Variant8f65d6ee0a8d909b55220e729bcfa416304a1271cfa59dc835ecd1d0ed171d2d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [beta](../../../../ProbabilityTheoryAndStochasticProcesses/BetaNamespacedPublic.lean/declarations/beta.md) | 41 | `declaration-track:9c2d24e93be0a636d293a46d2c54b6e15492e56ca5893490f3b1ec5e4b6db97b` |
| 2 | `lemma` | [beta_pos](../../../../ProbabilityTheoryAndStochasticProcesses/BetaNamespacedPublic.lean/declarations/beta-pos.md) | 44 | `result-track:fe1be7f14b6e3998ab02594295343a5243d87bdf18aa35dc6be41d5f0db9075a` |
| 3 | `theorem` | [beta_eq_betaIntegralReal](../../../../ProbabilityTheoryAndStochasticProcesses/BetaNamespacedPublic.lean/declarations/beta-eq-betaintegralreal.md) | 49 | `result-track:b52e09b9c634a53a51c6ff6c436541141960418b794c44195d8a3ddb4ced09f4` |
| 4 | `def` | [betaPDFReal](../../../../ProbabilityTheoryAndStochasticProcesses/BetaNamespacedPublic.lean/declarations/betapdfreal.md) | 59 | `declaration-track:936ad85a9674519f3827a5728a0de076876e6a81e2fead43a34ad2aa68986810` |
| 5 | `def` | [betaPDF](../../../../ProbabilityTheoryAndStochasticProcesses/BetaNamespacedPublic.lean/declarations/betapdf.md) | 66 | `declaration-track:dd359f533fbf96dbbcd48fd7835e12b3bfa51cc7ce4b055b46eb865d3d94d239` |
| 6 | `lemma` | [betaPDF_eq](../../../../ProbabilityTheoryAndStochasticProcesses/BetaNamespacedPublic.lean/declarations/betapdf-eq.md) | 69 | `result-track:d39f125f80d860573e883130757fb5865d84d3b4f5288139486a48cbc1053e83` |
| 7 | `lemma` | [betaPDF_eq_zero_of_nonpos](../../../../ProbabilityTheoryAndStochasticProcesses/BetaNamespacedPublic.lean/declarations/betapdf-eq-zero-of-nonpos.md) | 74 | `result-track:ea1129adce9dda533a43ea46aec843cbc8299213477a7965a8609e6b1cd38040` |
| 8 | `lemma` | [betaPDF_eq_zero_of_one_le](../../../../ProbabilityTheoryAndStochasticProcesses/BetaNamespacedPublic.lean/declarations/betapdf-eq-zero-of-one-le.md) | 78 | `result-track:e82c495c1794bd3e8e5aea9cd9e4ad4869d9fe32f816ea25fe09a88260a335f3` |
| 9 | `lemma` | [betaPDF_of_pos_lt_one](../../../../ProbabilityTheoryAndStochasticProcesses/BetaNamespacedPublic.lean/declarations/betapdf-of-pos-lt-one.md) | 82 | `result-track:59e51736057b0d5115d6120e5e01632805c640e2b3eab2f81d5539efaf296724` |
| 10 | `lemma` | [lintegral_betaPDF](../../../../ProbabilityTheoryAndStochasticProcesses/BetaNamespacedPublic.lean/declarations/lintegral-betapdf.md) | 86 | `result-track:4284b87f2c1190d2acad54a62955028efb2d9e022d2dd5edcdb3b30c2a18b1ff` |
| 11 | `lemma` | [betaPDFReal_pos](../../../../ProbabilityTheoryAndStochasticProcesses/BetaNamespacedPublic.lean/declarations/betapdfreal-pos.md) | 98 | `result-track:4c15c33badee21502a41e8df7d2d09a54af99f32205d27df80862958c09b48fe` |
| 12 | `lemma` | [measurable_betaPDFReal](../../../../ProbabilityTheoryAndStochasticProcesses/BetaNamespacedPublic.lean/declarations/measurable-betapdfreal.md) | 106 | `result-track:3ad9a07321b6b4acd3cb625989bb92155862d222f99a31d613612a884bb2e2e3` |
| 13 | `lemma` | [stronglyMeasurable_betaPDFReal](../../../../ProbabilityTheoryAndStochasticProcesses/BetaNamespacedPublic.lean/declarations/stronglymeasurable-betapdfreal.md) | 111 | `result-track:2e90c11bead809762f630b72a09a9e5f699fc43a0a0e467a6658af853b5889df` |
| 14 | `lemma` | [lintegral_betaPDF_eq_one](../../../../ProbabilityTheoryAndStochasticProcesses/BetaNamespacedPublic.lean/declarations/lintegral-betapdf-eq-one.md) | 116 | `result-track:3685510475c3a6a6acdc5a346417c76e8c85e64a726ae3df5263735903941ef3` |
| 15 | `def` | [betaMeasure](../../../../ProbabilityTheoryAndStochasticProcesses/BetaNamespacedPublic.lean/declarations/betameasure.md) | 140 | `declaration-track:2cc995c9cad140e1ae73b0546127a2fa7ad7426666d78e3422f3f97f637d0029` |
| 16 | `lemma` | [isProbabilityMeasureBeta](../../../../ProbabilityTheoryAndStochasticProcesses/BetaNamespacedPublic.lean/declarations/isprobabilitymeasurebeta.md) | 143 | `result-track:faccadd55e821701420a22315c5dc336392bae4c702542391dbf3fd9f428fecd` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c20c6c28a4a998852c744f23af2ea98e7812f6b1582e26acb474a614e8b321fd -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/Integration/Beta/Variant8f65d6ee0a8d909b55220e729bcfa416304a1271cfa59dc835ecd1d0ed171d2d.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/Integration/Beta/Variant8f65d6ee0a8d909b55220e729bcfa416304a1271cfa59dc835ecd1d0ed171d2d.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
