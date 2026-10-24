# Verification target: GRWTSK.Topology.GeneralTopology.Perfect.Variant7ef23810ec88084f968f0d2116e0181ed8d86dc788e98fd5bfd2aacde91e7b4d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f1351ebd74f06d465d1f865aaa588a6f47ae4bd2",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Perfect/Variant7ef23810ec88084f968f0d2116e0181ed8d86dc788e98fd5bfd2aacde91e7b4d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Perfect/Variant7ef23810ec88084f968f0d2116e0181ed8d86dc788e98fd5bfd2aacde91e7b4d.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Perfect/Variant7ef23810ec88084f968f0d2116e0181ed8d86dc788e98fd5bfd2aacde91e7b4d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f1351ebd74f06d465d1f865aaa588a6f47ae4bd2`.

Source path: `GRWTSK/Topology/GeneralTopology/Perfect/Variant7ef23810ec88084f968f0d2116e0181ed8d86dc788e98fd5bfd2aacde91e7b4d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Perfect/Variant7ef23810ec88084f968f0d2116e0181ed8d86dc788e98fd5bfd2aacde91e7b4d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.MetricSpace.Polish` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.MetricSpace.CantorScheme` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [AccPt.nhds_inter](../../../../../mathematics/Topology/GeneralTopology/Perfect/Variant7ef23810ec88084f968f0d2116e0181ed8d86dc788e98fd5bfd2aacde91e7b4d.lean/declarations/accpt-nhds-inter--9d82e76323e4a8d492fa7923.md) | 70 | `result-track:9d82e76323e4a8d492fa7923678d66afd6d9867192534f06785f2a84fdd30dda` |
| 2 | `def` | [Preperfect](../../../../../mathematics/Topology/GeneralTopology/Perfect/Variant7ef23810ec88084f968f0d2116e0181ed8d86dc788e98fd5bfd2aacde91e7b4d.lean/declarations/preperfect--dd0ef39880d825f7cf0cafe9.md) | 82 | `declaration-track:dd0ef39880d825f7cf0cafe96033f41f68596a5eb4ffe2547898cc2ba5175d9f` |
| 3 | `structure` | [Perfect](../../../../../mathematics/Topology/GeneralTopology/Perfect/Variant7ef23810ec88084f968f0d2116e0181ed8d86dc788e98fd5bfd2aacde91e7b4d.lean/declarations/perfect--9b495a1dc7490e6583fffacd.md) | 89 | `declaration-track:9b495a1dc7490e6583fffacd12cc603a6c361648cc4ee970b49c7781a50d1aae` |
| 4 | `theorem` | [preperfect_iff_nhds](../../../../../mathematics/Topology/GeneralTopology/Perfect/Variant7ef23810ec88084f968f0d2116e0181ed8d86dc788e98fd5bfd2aacde91e7b4d.lean/declarations/preperfect-iff-nhds--4346ea171eb278a36f086757.md) | 94 | `result-track:4346ea171eb278a36f086757f975724cfc79c8e3769ee304a8c148d6e06e5f35` |
| 5 | `theorem` | [Preperfect.open_inter](../../../../../mathematics/Topology/GeneralTopology/Perfect/Variant7ef23810ec88084f968f0d2116e0181ed8d86dc788e98fd5bfd2aacde91e7b4d.lean/declarations/preperfect-open-inter--34a7db09c31ba7d37f1d9b6a.md) | 99 | `result-track:34a7db09c31ba7d37f1d9b6a58a17cbd14ff6662e53f8a3222184c465cbeb712` |
| 6 | `theorem` | [Preperfect.perfect_closure](../../../../../mathematics/Topology/GeneralTopology/Perfect/Variant7ef23810ec88084f968f0d2116e0181ed8d86dc788e98fd5bfd2aacde91e7b4d.lean/declarations/preperfect-perfect-closure--57b480d4e190343ff9b07296.md) | 108 | `result-track:57b480d4e190343ff9b0729601a94e3fd269bf54272eb2237e9b50ef594c26df` |
| 7 | `theorem` | [preperfect_iff_perfect_closure](../../../../../mathematics/Topology/GeneralTopology/Perfect/Variant7ef23810ec88084f968f0d2116e0181ed8d86dc788e98fd5bfd2aacde91e7b4d.lean/declarations/preperfect-iff-perfect-closure--426ff6ed912a9c6cf9e7d2ad.md) | 120 | `result-track:426ff6ed912a9c6cf9e7d2ad1c7ef90f8ea982ec4a4acd3417bc3eae5327e120` |
| 8 | `theorem` | [Perfect.closure_nhds_inter](../../../../../mathematics/Topology/GeneralTopology/Perfect/Variant7ef23810ec88084f968f0d2116e0181ed8d86dc788e98fd5bfd2aacde91e7b4d.lean/declarations/perfect-closure-nhds-inter--d4e7f8d3cdc297a92e291547.md) | 135 | `result-track:d4e7f8d3cdc297a92e2915471bd620ca6f401704127cf4a7287021fae793c4f9` |
| 9 | `theorem` | [Perfect.splitting](../../../../../mathematics/Topology/GeneralTopology/Perfect/Variant7ef23810ec88084f968f0d2116e0181ed8d86dc788e98fd5bfd2aacde91e7b4d.lean/declarations/perfect-splitting--cec034a3bef4ee8929836fe5.md) | 146 | `result-track:cec034a3bef4ee8929836fe53755b17766997d671165934f9f2a50281db16963` |
| 10 | `theorem` | [exists_countable_union_perfect_of_isClosed](../../../../../mathematics/Topology/GeneralTopology/Perfect/Variant7ef23810ec88084f968f0d2116e0181ed8d86dc788e98fd5bfd2aacde91e7b4d.lean/declarations/exists-countable-union-perfect-of-isclosed--4e5d24b3a4d08155cfc94f87.md) | 172 | `result-track:4e5d24b3a4d08155cfc94f87807da6c1ebf467d7b7ca149c345f7f77fc8db06e` |
| 11 | `theorem` | [exists_perfect_nonempty_of_isClosed_of_not_countable](../../../../../mathematics/Topology/GeneralTopology/Perfect/Variant7ef23810ec88084f968f0d2116e0181ed8d86dc788e98fd5bfd2aacde91e7b4d.lean/declarations/exists-perfect-nonempty-of-isclosed-of-not-countable--55c21371c4eafa0d482b33db.md) | 208 | `result-track:55c21371c4eafa0d482b33db870ae574636abb1083c52b800c0196df99e56020` |
| 12 | `theorem` | [Perfect.small_diam_aux](../../../../../mathematics/Topology/GeneralTopology/Perfect/Variant7ef23810ec88084f968f0d2116e0181ed8d86dc788e98fd5bfd2aacde91e7b4d.lean/declarations/perfect-small-diam-aux--5ea5e7529def948a23008155.md) | 232 | `result-track:5ea5e7529def948a2300815514c23f114d33c3cee2578322f51cfc979b6a93d8` |
| 13 | `theorem` | [Perfect.small_diam_splitting](../../../../../mathematics/Topology/GeneralTopology/Perfect/Variant7ef23810ec88084f968f0d2116e0181ed8d86dc788e98fd5bfd2aacde91e7b4d.lean/declarations/perfect-small-diam-splitting--08e34035c2e5e7ed28c73c8e.md) | 252 | `result-track:08e34035c2e5e7ed28c73c8ecb79a1a4a352126580cf98386921b2cfcbbde96e` |
| 14 | `theorem` | [Perfect.exists_nat_bool_injection](../../../../../mathematics/Topology/GeneralTopology/Perfect/Variant7ef23810ec88084f968f0d2116e0181ed8d86dc788e98fd5bfd2aacde91e7b4d.lean/declarations/perfect-exists-nat-bool-injection--2a5a154699365e78710d3761.md) | 270 | `result-track:2a5a154699365e78710d37614399ae30ed8cc6a9cd9c7ba262548de05561c768` |
| 15 | `theorem` | [IsClosed.exists_nat_bool_injection_of_not_countable](../../../../../mathematics/Topology/GeneralTopology/Perfect/Variant7ef23810ec88084f968f0d2116e0181ed8d86dc788e98fd5bfd2aacde91e7b4d.lean/declarations/isclosed-exists-nat-bool-injection-of-not-countable--368add8134b3348bd4c0511b.md) | 326 | `result-track:368add8134b3348bd4c0511be7190baa1b18ee673f10e1ead03b2fa77a135cff` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
