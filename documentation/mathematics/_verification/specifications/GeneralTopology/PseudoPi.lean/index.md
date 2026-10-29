# Verification target: Pseudo Pi

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c7b60bab973a96d385d6155f6c6780a4295bd39f",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/MetricTopology/Pi/Variant957b94c12354b41ca5516a1670780e7c628c1bc82b7d7b13ec21f317ed356fcf.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GeneralTopology/PseudoPi.lean/index.md) · [Full source](../../../../GeneralTopology/PseudoPi.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c7b60bab973a96d385d6155f6c6780a4295bd39f`.

Source path: `GRWTSK/Topology/MetricTopology/Pi/Variant957b94c12354b41ca5516a1670780e7c628c1bc82b7d7b13ec21f317ed356fcf.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/MetricTopology/Pi/Variant957b94c12354b41ca5516a1670780e7c628c1bc82b7d7b13ec21f317ed356fcf.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.ENNReal.Lemmas` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Bornology.Constructions` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.EMetricSpace.Pi` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.MetricSpace.Pseudo.Defs` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [pseudoMetricSpacePi](../../../../GeneralTopology/PseudoPi.lean/declarations/pseudometricspacepi.md) | 27 | `declaration-track:4ac3e80a2a9a6517afc5b3b877ac35500b8685acdd1ef62b41316b7419e823f0` |
| 2 | `lemma` | [nndist_pi_def](../../../../GeneralTopology/PseudoPi.lean/declarations/nndist-pi-def.md) | 45 | `result-track:b0220affcf19c4358beb72e4c1f07ba34e6c4e5ddfdee9399484488b5a6997eb` |
| 3 | `lemma` | [dist_pi_def](../../../../GeneralTopology/PseudoPi.lean/declarations/dist-pi-def.md) | 47 | `result-track:99d929498f911c95c7bea24e5b18bebe0da6128709b2cc93c4fc7c741bd4c5b7` |
| 4 | `lemma` | [nndist_pi_le_iff](../../../../GeneralTopology/PseudoPi.lean/declarations/nndist-pi-le-iff.md) | 49 | `result-track:68c386c451c5049d4e148f67bb9fa03864df22660242558a3e9c42eede001cbc` |
| 5 | `lemma` | [nndist_pi_lt_iff](../../../../GeneralTopology/PseudoPi.lean/declarations/nndist-pi-lt-iff.md) | 52 | `result-track:993d5cfde2b5bf54100cb46cf6fedc70fe617fb131a3270387413b3614e5a2c8` |
| 6 | `lemma` | [nndist_pi_eq_iff](../../../../GeneralTopology/PseudoPi.lean/declarations/nndist-pi-eq-iff.md) | 57 | `result-track:22ce80ef72c01762a923591bdb6b8d45857b753cb07a0e826aeb794b40b29b60` |
| 7 | `lemma` | [dist_pi_lt_iff](../../../../GeneralTopology/PseudoPi.lean/declarations/dist-pi-lt-iff.md) | 65 | `result-track:397434a38d27f96add6ca4268ba2a3531bd7b38a0d23500bb8fc71dad242629f` |
| 8 | `lemma` | [dist_pi_le_iff](../../../../GeneralTopology/PseudoPi.lean/declarations/dist-pi-le-iff-source-edition-2.md) | 70 | `result-track:fa3816d4fa6d9b4df5076f02a7f313dca4c8855e7e85ccaf21c59c127c8ef1cc` |
| 9 | `lemma` | [dist_pi_eq_iff](../../../../GeneralTopology/PseudoPi.lean/declarations/dist-pi-eq-iff.md) | 75 | `result-track:35eb1d15e692b8d3d097344ecd755de3ed6e3dab87694ef881b58a2d429eeae9` |
| 10 | `lemma` | [dist_pi_le_iff'](../../../../GeneralTopology/PseudoPi.lean/declarations/dist-pi-le-iff.md) | 80 | `result-track:23e4ca8f1988fc8ea85930af4e1fc009fa49acaed75f738e20fa660d7804bd9d` |
| 11 | `lemma` | [dist_pi_const_le](../../../../GeneralTopology/PseudoPi.lean/declarations/dist-pi-const-le.md) | 87 | `result-track:79a6dc1839ec57288854a668de1dbaffb94345023aaecc63aeee1facad53aaf5` |
| 12 | `lemma` | [nndist_pi_const_le](../../../../GeneralTopology/PseudoPi.lean/declarations/nndist-pi-const-le.md) | 90 | `result-track:32a7fa6c44553587ca3c689e4d4555d4996550f3cbc53279f39e49dc9c1f3cd2` |
| 13 | `lemma` | [dist_pi_const](../../../../GeneralTopology/PseudoPi.lean/declarations/dist-pi-const.md) | 94 | `result-track:86e2dcdf73bd7fefef0916b3b38d43644744a18e34e91458317ee850921c6835` |
| 14 | `lemma` | [nndist_pi_const](../../../../GeneralTopology/PseudoPi.lean/declarations/nndist-pi-const.md) | 98 | `result-track:83b608307aff60785cb8f5bd6a39fdf1cd1a39c5daf620eb3cb68aba71046764` |
| 15 | `lemma` | [nndist_le_pi_nndist](../../../../GeneralTopology/PseudoPi.lean/declarations/nndist-le-pi-nndist.md) | 101 | `result-track:cc91dfabfc35c4d3f9527328c921b66c00349b0842acd53342aaa129099a23bf` |
| 16 | `lemma` | [dist_le_pi_dist](../../../../GeneralTopology/PseudoPi.lean/declarations/dist-le-pi-dist.md) | 105 | `result-track:39ce536dfdf285adc29433962198d4dad3bbbd2811bb83102234701173e41f31` |
| 17 | `lemma` | [ball_pi](../../../../GeneralTopology/PseudoPi.lean/declarations/ball-pi-source-edition-2.md) | 110 | `result-track:da409e12bbb67ef2cbdedccf7c8fce5e55e9b2b11c6f3633a1b1045b338ca350` |
| 18 | `lemma` | [ball_pi'](../../../../GeneralTopology/PseudoPi.lean/declarations/ball-pi.md) | 117 | `result-track:0c0143ba26f0097f0a4276da37015d0d11aa9fee178fe69e23f1e39649639a1b` |
| 19 | `lemma` | [closedBall_pi](../../../../GeneralTopology/PseudoPi.lean/declarations/closedball-pi.md) | 123 | `result-track:e75944252c6b562101000812a18721b4f406b632f3846b8bffd3acf0b670223a` |
| 20 | `lemma` | [closedBall_pi'](../../../../GeneralTopology/PseudoPi.lean/declarations/closedball-pi-source-edition-2.md) | 130 | `result-track:f160ff8b01012dfce93d63c44bfd87c02b62a2e9b9cddc5d4eface2e4ede9139` |
| 21 | `lemma` | [sphere_pi](../../../../GeneralTopology/PseudoPi.lean/declarations/sphere-pi.md) | 136 | `result-track:53978db9d8ddc76db2d4aa259ac04740b5bc44d829c89e35168179adfaf56a95` |
| 22 | `lemma` | [Fin.nndist_insertNth_insertNth](../../../../GeneralTopology/PseudoPi.lean/declarations/fin-nndist-insertnth-insertnth.md) | 152 | `result-track:87937c2b72fd469fbde37e49437e280d2001c1640e2733efd7fc2ffe38e4974d` |
| 23 | `lemma` | [Fin.dist_insertNth_insertNth](../../../../GeneralTopology/PseudoPi.lean/declarations/fin-dist-insertnth-insertnth.md) | 158 | `result-track:5902399cf45df6cee97d6be46186620f1dc364c3f89d65abdbce355b9c57c225` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b8648d264b503e3c91c307138bb11bcfe4cd4271417ff9c9b765587b8b6a4a84 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/MetricTopology/Pi/Variant957b94c12354b41ca5516a1670780e7c628c1bc82b7d7b13ec21f317ed356fcf.lean","GRWTSK/_verification/specifications/Topology/MetricTopology/Pi/Variant957b94c12354b41ca5516a1670780e7c628c1bc82b7d7b13ec21f317ed356fcf.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
