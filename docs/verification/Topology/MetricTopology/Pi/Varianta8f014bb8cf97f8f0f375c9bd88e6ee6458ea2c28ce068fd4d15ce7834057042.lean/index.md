# Verification target: GRWTSK.Topology.MetricTopology.Pi.Varianta8f014bb8cf97f8f0f375c9bd88e6ee6458ea2c28ce068fd4d15ce7834057042

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "cd554be3994ba3add1a390f4eb5615c8977c7857",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/MetricTopology/Pi/Varianta8f014bb8cf97f8f0f375c9bd88e6ee6458ea2c28ce068fd4d15ce7834057042.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/MetricTopology/Pi/Varianta8f014bb8cf97f8f0f375c9bd88e6ee6458ea2c28ce068fd4d15ce7834057042.lean/index.md) · [Full source](../../../../../mathematics/Topology/MetricTopology/Pi/Varianta8f014bb8cf97f8f0f375c9bd88e6ee6458ea2c28ce068fd4d15ce7834057042.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `cd554be3994ba3add1a390f4eb5615c8977c7857`.

Source path: `GRWTSK/Topology/MetricTopology/Pi/Varianta8f014bb8cf97f8f0f375c9bd88e6ee6458ea2c28ce068fd4d15ce7834057042.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/MetricTopology/Pi/Varianta8f014bb8cf97f8f0f375c9bd88e6ee6458ea2c28ce068fd4d15ce7834057042.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.ENNReal.Lemmas` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Bornology.Constructions` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.EMetricSpace.Pi` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.MetricSpace.Pseudo.Defs` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [pseudoMetricSpacePi](../../../../../mathematics/Topology/MetricTopology/Pi/Varianta8f014bb8cf97f8f0f375c9bd88e6ee6458ea2c28ce068fd4d15ce7834057042.lean/declarations/pseudometricspacepi--80642b17adb4158d198e2a49.md) | 35 | `declaration-track:80642b17adb4158d198e2a4935e50578ab1fd37ff42a1a3f83610813020f59a5` |
| 2 | `lemma` | [nndist_pi_def](../../../../../mathematics/Topology/MetricTopology/Pi/Varianta8f014bb8cf97f8f0f375c9bd88e6ee6458ea2c28ce068fd4d15ce7834057042.lean/declarations/nndist-pi-def--fccbe7cfa6bfaf10998e3880.md) | 53 | `result-track:fccbe7cfa6bfaf10998e38802a885a7395c54a31de207cd2e69d63f51fe4f86a` |
| 3 | `lemma` | [dist_pi_def](../../../../../mathematics/Topology/MetricTopology/Pi/Varianta8f014bb8cf97f8f0f375c9bd88e6ee6458ea2c28ce068fd4d15ce7834057042.lean/declarations/dist-pi-def--ce3289fd1d2cffc4e49feb80.md) | 55 | `result-track:ce3289fd1d2cffc4e49feb800f03ea7f5dd9a24381f3794f843f97db69bf0ff7` |
| 4 | `lemma` | [nndist_pi_le_iff](../../../../../mathematics/Topology/MetricTopology/Pi/Varianta8f014bb8cf97f8f0f375c9bd88e6ee6458ea2c28ce068fd4d15ce7834057042.lean/declarations/nndist-pi-le-iff--573253c8256a3943fc2b3d24.md) | 57 | `result-track:573253c8256a3943fc2b3d24c92b43d0b8a4404dd2887ee0aa73697fef6fd4f5` |
| 5 | `lemma` | [nndist_pi_lt_iff](../../../../../mathematics/Topology/MetricTopology/Pi/Varianta8f014bb8cf97f8f0f375c9bd88e6ee6458ea2c28ce068fd4d15ce7834057042.lean/declarations/nndist-pi-lt-iff--e4057eb02e0c431b9920d62d.md) | 60 | `result-track:e4057eb02e0c431b9920d62d59f3577c6a5e532c1a586fe81f12b7477a38c2d0` |
| 6 | `lemma` | [nndist_pi_eq_iff](../../../../../mathematics/Topology/MetricTopology/Pi/Varianta8f014bb8cf97f8f0f375c9bd88e6ee6458ea2c28ce068fd4d15ce7834057042.lean/declarations/nndist-pi-eq-iff--e3de3844fb8ce1e1647c1e00.md) | 65 | `result-track:e3de3844fb8ce1e1647c1e004c72651075c71f93d696162cad6c47940708c714` |
| 7 | `lemma` | [dist_pi_lt_iff](../../../../../mathematics/Topology/MetricTopology/Pi/Varianta8f014bb8cf97f8f0f375c9bd88e6ee6458ea2c28ce068fd4d15ce7834057042.lean/declarations/dist-pi-lt-iff--b6b3278bbf65c0aedabe4c3b.md) | 73 | `result-track:b6b3278bbf65c0aedabe4c3bcadd98ac6cd3580235981f85cfa4930bc2cd7339` |
| 8 | `lemma` | [dist_pi_le_iff](../../../../../mathematics/Topology/MetricTopology/Pi/Varianta8f014bb8cf97f8f0f375c9bd88e6ee6458ea2c28ce068fd4d15ce7834057042.lean/declarations/dist-pi-le-iff--c5343ed858bca90e4c9a0550.md) | 78 | `result-track:c5343ed858bca90e4c9a0550edd0bd587ac05e46b25767e3e951af19c879c7e4` |
| 9 | `lemma` | [dist_pi_eq_iff](../../../../../mathematics/Topology/MetricTopology/Pi/Varianta8f014bb8cf97f8f0f375c9bd88e6ee6458ea2c28ce068fd4d15ce7834057042.lean/declarations/dist-pi-eq-iff--14844ea4db316c77700eefbf.md) | 83 | `result-track:14844ea4db316c77700eefbf94aa97349fc86bdda40d55045acd1da1d2bd3ddb` |
| 10 | `lemma` | [dist_pi_le_iff'](../../../../../mathematics/Topology/MetricTopology/Pi/Varianta8f014bb8cf97f8f0f375c9bd88e6ee6458ea2c28ce068fd4d15ce7834057042.lean/declarations/dist-pi-le-iff--577ebe347b912adc926f50c3.md) | 88 | `result-track:577ebe347b912adc926f50c3c64507d12712edcb7d13f37f8974c6f1284411d4` |
| 11 | `lemma` | [dist_pi_const_le](../../../../../mathematics/Topology/MetricTopology/Pi/Varianta8f014bb8cf97f8f0f375c9bd88e6ee6458ea2c28ce068fd4d15ce7834057042.lean/declarations/dist-pi-const-le--bdf7f9d59142282736505e5a.md) | 95 | `result-track:bdf7f9d59142282736505e5aafc18989bd4168780b83f702993d54a23d5a9f9e` |
| 12 | `lemma` | [nndist_pi_const_le](../../../../../mathematics/Topology/MetricTopology/Pi/Varianta8f014bb8cf97f8f0f375c9bd88e6ee6458ea2c28ce068fd4d15ce7834057042.lean/declarations/nndist-pi-const-le--c97162fb7b7d26317b54ad4d.md) | 98 | `result-track:c97162fb7b7d26317b54ad4db298c55865acae760cd05c63afdc034031f0a85d` |
| 13 | `lemma` | [dist_pi_const](../../../../../mathematics/Topology/MetricTopology/Pi/Varianta8f014bb8cf97f8f0f375c9bd88e6ee6458ea2c28ce068fd4d15ce7834057042.lean/declarations/dist-pi-const--df255dfcc1037c557385a91e.md) | 102 | `result-track:df255dfcc1037c557385a91e3bd0ba90a196a2e37ed8171447e2229bb8c3a8ad` |
| 14 | `lemma` | [nndist_pi_const](../../../../../mathematics/Topology/MetricTopology/Pi/Varianta8f014bb8cf97f8f0f375c9bd88e6ee6458ea2c28ce068fd4d15ce7834057042.lean/declarations/nndist-pi-const--3146ac1b4303b7480a750e32.md) | 106 | `result-track:3146ac1b4303b7480a750e32d44cde846311e393ec4780f945a719e15707ae41` |
| 15 | `lemma` | [nndist_le_pi_nndist](../../../../../mathematics/Topology/MetricTopology/Pi/Varianta8f014bb8cf97f8f0f375c9bd88e6ee6458ea2c28ce068fd4d15ce7834057042.lean/declarations/nndist-le-pi-nndist--cbceb660dd16a5de0ae597c6.md) | 109 | `result-track:cbceb660dd16a5de0ae597c6f40ebeb1dd4397fc3d68c7098d9739b8067af85c` |
| 16 | `lemma` | [dist_le_pi_dist](../../../../../mathematics/Topology/MetricTopology/Pi/Varianta8f014bb8cf97f8f0f375c9bd88e6ee6458ea2c28ce068fd4d15ce7834057042.lean/declarations/dist-le-pi-dist--3187d46895d154b4f69ecd13.md) | 113 | `result-track:3187d46895d154b4f69ecd13d1310b09d065312884db0c59468ae23a66e42475` |
| 17 | `lemma` | [ball_pi](../../../../../mathematics/Topology/MetricTopology/Pi/Varianta8f014bb8cf97f8f0f375c9bd88e6ee6458ea2c28ce068fd4d15ce7834057042.lean/declarations/ball-pi--af3c57d9eefb663437d918bc.md) | 118 | `result-track:af3c57d9eefb663437d918bca81023fb942d427d433b906ae06a6d773a10b532` |
| 18 | `lemma` | [ball_pi'](../../../../../mathematics/Topology/MetricTopology/Pi/Varianta8f014bb8cf97f8f0f375c9bd88e6ee6458ea2c28ce068fd4d15ce7834057042.lean/declarations/ball-pi--0e52864239589290932f7058.md) | 125 | `result-track:0e52864239589290932f70587f342f348636512210ca4dcb1c5a6bf09086df76` |
| 19 | `lemma` | [closedBall_pi](../../../../../mathematics/Topology/MetricTopology/Pi/Varianta8f014bb8cf97f8f0f375c9bd88e6ee6458ea2c28ce068fd4d15ce7834057042.lean/declarations/closedball-pi--5e760ac085e29e45ac19b4bd.md) | 131 | `result-track:5e760ac085e29e45ac19b4bd78d094815627bfef6dc0e17d4d8a369e37aab078` |
| 20 | `lemma` | [closedBall_pi'](../../../../../mathematics/Topology/MetricTopology/Pi/Varianta8f014bb8cf97f8f0f375c9bd88e6ee6458ea2c28ce068fd4d15ce7834057042.lean/declarations/closedball-pi--098d37a0591a2430f8165db6.md) | 138 | `result-track:098d37a0591a2430f8165db6aa0d91fe2046fb33d9e8247e074743daa0e8892a` |
| 21 | `lemma` | [sphere_pi](../../../../../mathematics/Topology/MetricTopology/Pi/Varianta8f014bb8cf97f8f0f375c9bd88e6ee6458ea2c28ce068fd4d15ce7834057042.lean/declarations/sphere-pi--6503494cf9a2324d2767e7c4.md) | 144 | `result-track:6503494cf9a2324d2767e7c40ed1d88a2c747b61994229aad09ede7be32985e2` |
| 22 | `lemma` | [Fin.nndist_insertNth_insertNth](../../../../../mathematics/Topology/MetricTopology/Pi/Varianta8f014bb8cf97f8f0f375c9bd88e6ee6458ea2c28ce068fd4d15ce7834057042.lean/declarations/fin-nndist-insertnth-insertnth--1b0da19f436c9c967c6b1d8b.md) | 160 | `result-track:1b0da19f436c9c967c6b1d8bca55a418e475c2111fb0598fc12df31cc2fff402` |
| 23 | `lemma` | [Fin.dist_insertNth_insertNth](../../../../../mathematics/Topology/MetricTopology/Pi/Varianta8f014bb8cf97f8f0f375c9bd88e6ee6458ea2c28ce068fd4d15ce7834057042.lean/declarations/fin-dist-insertnth-insertnth--e63f398336d3cc7951501b78.md) | 166 | `result-track:e63f398336d3cc7951501b788bb65e357257807dbb09095305f510b3fe2f8fca` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
