# Verification target: GRWTSK.Topology.MetricTopology.UpperLower.Variant5a0d7a9a9ab4561ce43438d747c3a71d015c43324d13a773a4ad0a93c032ea79

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bd217a0b5cc739a3803d4704f5069f07af2d0678",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/MetricTopology/UpperLower/Variant5a0d7a9a9ab4561ce43438d747c3a71d015c43324d13a773a4ad0a93c032ea79.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/MetricTopology/UpperLower/Variant5a0d7a9a9ab4561ce43438d747c3a71d015c43324d13a773a4ad0a93c032ea79.lean/index.md) · [Full source](../../../../../mathematics/Topology/MetricTopology/UpperLower/Variant5a0d7a9a9ab4561ce43438d747c3a71d015c43324d13a773a4ad0a93c032ea79.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bd217a0b5cc739a3803d4704f5069f07af2d0678`.

Source path: `GRWTSK/Topology/MetricTopology/UpperLower/Variant5a0d7a9a9ab4561ce43438d747c3a71d015c43324d13a773a4ad0a93c032ea79.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/MetricTopology/UpperLower/Variant5a0d7a9a9ab4561ce43438d747c3a71d015c43324d13a773a4ad0a93c032ea79.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [IsUpperSet.thickening'](../../../../../mathematics/Topology/MetricTopology/UpperLower/Variant5a0d7a9a9ab4561ce43438d747c3a71d015c43324d13a773a4ad0a93c032ea79.lean/declarations/isupperset-thickening--02b1af3fe1e63fc1864f5dd6.md) | 52 | `result-track:02b1af3fe1e63fc1864f5dd620ef0e246420a86f33c0757dbc114b9a3717af3d` |
| 2 | `theorem` | [IsLowerSet.thickening'](../../../../../mathematics/Topology/MetricTopology/UpperLower/Variant5a0d7a9a9ab4561ce43438d747c3a71d015c43324d13a773a4ad0a93c032ea79.lean/declarations/islowerset-thickening--abe313644b2915b258e750a9.md) | 58 | `result-track:abe313644b2915b258e750a99721bb752eb5babe0fccd1699040a506cd24bbf0` |
| 3 | `theorem` | [IsUpperSet.cthickening'](../../../../../mathematics/Topology/MetricTopology/UpperLower/Variant5a0d7a9a9ab4561ce43438d747c3a71d015c43324d13a773a4ad0a93c032ea79.lean/declarations/isupperset-cthickening--77437345cc57c2871c9a0eb8.md) | 64 | `result-track:77437345cc57c2871c9a0eb88e28e12122e372186fc1e082d1ea574912d71203` |
| 4 | `theorem` | [IsLowerSet.cthickening'](../../../../../mathematics/Topology/MetricTopology/UpperLower/Variant5a0d7a9a9ab4561ce43438d747c3a71d015c43324d13a773a4ad0a93c032ea79.lean/declarations/islowerset-cthickening--336f7ec7b7c409c2dd3201ec.md) | 70 | `result-track:336f7ec7b7c409c2dd3201eca696c541da1c99b845273b45dce398eb1b9909e2` |
| 5 | `lemma` | [upperClosure_interior_subset'](../../../../../mathematics/Topology/MetricTopology/UpperLower/Variant5a0d7a9a9ab4561ce43438d747c3a71d015c43324d13a773a4ad0a93c032ea79.lean/declarations/upperclosure-interior-subset--3f742df42b3b4e5ffc36fc00.md) | 75 | `result-track:3f742df42b3b4e5ffc36fc000408cebcac03efda32202e61a1987e4460315187` |
| 6 | `lemma` | [lowerClosure_interior_subset'](../../../../../mathematics/Topology/MetricTopology/UpperLower/Variant5a0d7a9a9ab4561ce43438d747c3a71d015c43324d13a773a4ad0a93c032ea79.lean/declarations/lowerclosure-interior-subset--484a2129cb11443a42502215.md) | 79 | `result-track:484a2129cb11443a42502215be96dc5e852a603306ee49d218b1210a69942871` |
| 7 | `theorem` | [IsUpperSet.mem_interior_of_forall_lt](../../../../../mathematics/Topology/MetricTopology/UpperLower/Variant5a0d7a9a9ab4561ce43438d747c3a71d015c43324d13a773a4ad0a93c032ea79.lean/declarations/isupperset-mem-interior-of-forall-lt--d7f9121a67f8b8ca406ddacd.md) | 91 | `result-track:d7f9121a67f8b8ca406ddacdf8b9a0788608e67a4f67d37892589dcd3d6bb8c1` |
| 8 | `theorem` | [IsLowerSet.mem_interior_of_forall_lt](../../../../../mathematics/Topology/MetricTopology/UpperLower/Variant5a0d7a9a9ab4561ce43438d747c3a71d015c43324d13a773a4ad0a93c032ea79.lean/declarations/islowerset-mem-interior-of-forall-lt--8509464260c2e06eeac71b71.md) | 108 | `result-track:8509464260c2e06eeac71b71c946cf956cb03b05e72ebba48d5817b7b0bf859a` |
| 9 | `lemma` | [dist_inf_sup_pi](../../../../../mathematics/Topology/MetricTopology/UpperLower/Variant5a0d7a9a9ab4561ce43438d747c3a71d015c43324d13a773a4ad0a93c032ea79.lean/declarations/dist-inf-sup-pi--1cb766fa96e94c59aab13419.md) | 132 | `result-track:1cb766fa96e94c59aab13419ef9efdc0f8affde7ba9f0632b98fbfeff81c61cf` |
| 10 | `lemma` | [dist_mono_left_pi](../../../../../mathematics/Topology/MetricTopology/UpperLower/Variant5a0d7a9a9ab4561ce43438d747c3a71d015c43324d13a773a4ad0a93c032ea79.lean/declarations/dist-mono-left-pi--2a05298a2669e255392c3be8.md) | 137 | `result-track:2a05298a2669e255392c3be893275e34f1dc4fe5619ad532161e9542a8739d72` |
| 11 | `lemma` | [dist_mono_right_pi](../../../../../mathematics/Topology/MetricTopology/UpperLower/Variant5a0d7a9a9ab4561ce43438d747c3a71d015c43324d13a773a4ad0a93c032ea79.lean/declarations/dist-mono-right-pi--6d5dc14e302959d66fc633de.md) | 143 | `result-track:6d5dc14e302959d66fc633defc9fd948085ce3fa1050a0f89df49e26f1ec11d1` |
| 12 | `lemma` | [dist_anti_left_pi](../../../../../mathematics/Topology/MetricTopology/UpperLower/Variant5a0d7a9a9ab4561ce43438d747c3a71d015c43324d13a773a4ad0a93c032ea79.lean/declarations/dist-anti-left-pi--04620bc0b690e5570143f677.md) | 146 | `result-track:04620bc0b690e5570143f6779f54493b7feb8d8439cce84af57ac36dcc976dc2` |
| 13 | `lemma` | [dist_anti_right_pi](../../../../../mathematics/Topology/MetricTopology/UpperLower/Variant5a0d7a9a9ab4561ce43438d747c3a71d015c43324d13a773a4ad0a93c032ea79.lean/declarations/dist-anti-right-pi--cf67bc6a605c7204d1ecefc2.md) | 152 | `result-track:cf67bc6a605c7204d1ecefc2644d3d349bf1bd936496d980660f190d8719d570` |
| 14 | `lemma` | [dist_le_dist_of_le_pi](../../../../../mathematics/Topology/MetricTopology/UpperLower/Variant5a0d7a9a9ab4561ce43438d747c3a71d015c43324d13a773a4ad0a93c032ea79.lean/declarations/dist-le-dist-of-le-pi--1e4faf30e995e4d5b0722a02.md) | 155 | `result-track:1e4faf30e995e4d5b0722a0284dd459b228a566e4464b4bb64b3941fb5db0595` |
| 15 | `theorem` | [IsUpperSet.exists_subset_ball](../../../../../mathematics/Topology/MetricTopology/UpperLower/Variant5a0d7a9a9ab4561ce43438d747c3a71d015c43324d13a773a4ad0a93c032ea79.lean/declarations/isupperset-exists-subset-ball--cef8e09a4f8c941bcf266ee9.md) | 160 | `result-track:cef8e09a4f8c941bcf266ee9ed1ed96a881da444fe8f832572e21d1a233c7329` |
| 16 | `theorem` | [IsLowerSet.exists_subset_ball](../../../../../mathematics/Topology/MetricTopology/UpperLower/Variant5a0d7a9a9ab4561ce43438d747c3a71d015c43324d13a773a4ad0a93c032ea79.lean/declarations/islowerset-exists-subset-ball--9ade0979c530b15e1da238f4.md) | 177 | `result-track:9ade0979c530b15e1da238f4705ce1c064b157aeffbf5c92565591193340d253` |
| 17 | `lemma` | [IsClosed.upperClosure_pi](../../../../../mathematics/Topology/MetricTopology/UpperLower/Variant5a0d7a9a9ab4561ce43438d747c3a71d015c43324d13a773a4ad0a93c032ea79.lean/declarations/isclosed-upperclosure-pi--dd4ba381da152f818e186cd5.md) | 207 | `result-track:dd4ba381da152f818e186cd579a08e6fff94b209672753d8abd21b22ba1cc959` |
| 18 | `lemma` | [IsClosed.lowerClosure_pi](../../../../../mathematics/Topology/MetricTopology/UpperLower/Variant5a0d7a9a9ab4561ce43438d747c3a71d015c43324d13a773a4ad0a93c032ea79.lean/declarations/isclosed-lowerclosure-pi--702610f6e8a0b9f0eeab3c64.md) | 218 | `result-track:702610f6e8a0b9f0eeab3c641a2de53e7a0c155a78d1f7acf6070283569e9bfa` |
| 19 | `lemma` | [IsClopen.upperClosure_pi](../../../../../mathematics/Topology/MetricTopology/UpperLower/Variant5a0d7a9a9ab4561ce43438d747c3a71d015c43324d13a773a4ad0a93c032ea79.lean/declarations/isclopen-upperclosure-pi--a3a0b8c06cc703980c953254.md) | 230 | `result-track:a3a0b8c06cc703980c9532543df86e80999b8fa7a1287d6249da196e5b14e32d` |
| 20 | `lemma` | [IsClopen.lowerClosure_pi](../../../../../mathematics/Topology/MetricTopology/UpperLower/Variant5a0d7a9a9ab4561ce43438d747c3a71d015c43324d13a773a4ad0a93c032ea79.lean/declarations/isclopen-lowerclosure-pi--522df00960ae94b909ee408b.md) | 233 | `result-track:522df00960ae94b909ee408bfa154a3738af2543c0baac2cd030cb2a6ee9397e` |
| 21 | `lemma` | [closure_upperClosure_comm_pi](../../../../../mathematics/Topology/MetricTopology/UpperLower/Variant5a0d7a9a9ab4561ce43438d747c3a71d015c43324d13a773a4ad0a93c032ea79.lean/declarations/closure-upperclosure-comm-pi--d002e7d0b696bf766e36e4f5.md) | 236 | `result-track:d002e7d0b696bf766e36e4f52d5a5e66bdef1d8aeeb9bc601fb86c74a8909811` |
| 22 | `lemma` | [closure_lowerClosure_comm_pi](../../../../../mathematics/Topology/MetricTopology/UpperLower/Variant5a0d7a9a9ab4561ce43438d747c3a71d015c43324d13a773a4ad0a93c032ea79.lean/declarations/closure-lowerclosure-comm-pi--76a9d006e51d3212b17e85b8.md) | 242 | `result-track:76a9d006e51d3212b17e85b8beab3e5039d7583b62133275bb55759a4960822b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
