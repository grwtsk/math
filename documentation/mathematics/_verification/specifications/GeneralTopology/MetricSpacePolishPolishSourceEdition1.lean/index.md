# Verification target: Metric Space Polish Polish Source Edition1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d5cacd501a6364845afe21e6ef015eb4bc3e9c46",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Polish/Variantec5f2ea10743b8ca761d2f26478bbef1c95b3c233dc01205089a7dbb7719b613.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GeneralTopology/MetricSpacePolishPolishSourceEdition1.lean/index.md) · [Full source](../../../../GeneralTopology/MetricSpacePolishPolishSourceEdition1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d5cacd501a6364845afe21e6ef015eb4bc3e9c46`.

Source path: `GRWTSK/Topology/GeneralTopology/Polish/Variantec5f2ea10743b8ca761d2f26478bbef1c95b3c233dc01205089a7dbb7719b613.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Polish/Variantec5f2ea10743b8ca761d2f26478bbef1c95b3c233dc01205089a7dbb7719b613.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.MetricSpace.PiNat` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Metrizable.CompletelyMetrizable` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Sets.Opens` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [PolishSpace](../../../../GeneralTopology/MetricSpacePolishPolishSourceEdition1.lean/declarations/polishspace.md) | 58 | `declaration-track:1add54db2c67054183cd6df8dc57c7c5e032cee17b9287a332e035d476ec1073` |
| 2 | `instance` | [(anonymous)](../../../../GeneralTopology/MetricSpacePolishPolishSourceEdition1.lean/declarations/instance-source-edition-5.md) | 61 | `declaration-track:ce0e78512ba2bf2e2847c79ac1cb0666afac2690185b0bc0bb8d392110c24503` |
| 3 | `theorem` | [exists_nat_nat_continuous_surjective](../../../../GeneralTopology/MetricSpacePolishPolishSourceEdition1.lean/declarations/exists-nat-nat-continuous-surjective.md) | 82 | `result-track:27c702548dd6712db436a48123bfd0fb934705fba6a6cb1edec816b64f6bcef1` |
| 4 | `theorem` | [_root_.Topology.IsClosedEmbedding.polishSpace](../../../../GeneralTopology/MetricSpacePolishPolishSourceEdition1.lean/declarations/root-topology-isclosedembedding-polishspace.md) | 88 | `result-track:f9a9157bbceee473aa2d9c423890504dfb1949cfd21ccea8a5209849daea70f3` |
| 5 | `theorem` | [_root_.Equiv.polishSpace_induced](../../../../GeneralTopology/MetricSpacePolishPolishSourceEdition1.lean/declarations/root-equiv-polishspace-induced.md) | 99 | `result-track:7cbe2e5f1912ead189fd942a8e5d6984d87f92cbe203b1ca951e18c1df374218` |
| 6 | `theorem` | [_root_.IsClosed.polishSpace](../../../../GeneralTopology/MetricSpacePolishPolishSourceEdition1.lean/declarations/root-isclosed-polishspace.md) | 105 | `result-track:e5c0a456a33cce00679b41b231779341bebcb1bcafbcc8d251f2841aff2401bb` |
| 7 | `theorem` | [_root_.CompletePseudometrizable.iInf](../../../../GeneralTopology/MetricSpacePolishPolishSourceEdition1.lean/declarations/root-completepseudometrizable-iinf.md) | 109 | `result-track:f8df1ede2ee1bf2bf361234a05d3ae49f5d6ced5752407c19bc3b67250a80aff` |
| 8 | `theorem` | [iInf](../../../../GeneralTopology/MetricSpacePolishPolishSourceEdition1.lean/declarations/iinf.md) | 121 | `result-track:68d6d3686922dc424d34e355ecdc53857437d2eae3f7e1d1ac7dd4ba7f848e37` |
| 9 | `theorem` | [exists_polishSpace_forall_le](../../../../GeneralTopology/MetricSpacePolishPolishSourceEdition1.lean/declarations/exists-polishspace-forall-le.md) | 138 | `result-track:37a4ea59575ba0dc1595e602432225f7fb93bb746fabc0efe5cca03aec26056b` |
| 10 | `instance` | [(anonymous)](../../../../GeneralTopology/MetricSpacePolishPolishSourceEdition1.lean/declarations/instance.md) | 145 | `declaration-track:11e952ab489f104fe55c5b32c9a6b9c519d0c1aa12365ed8601544900afd99d4` |
| 11 | `def` | [CompleteCopy](../../../../GeneralTopology/MetricSpacePolishPolishSourceEdition1.lean/declarations/completecopy.md) | 165 | `declaration-track:3d60c6195079d7cc796a724d71fd5bf12d833db65b5b8e98885f9b2777b5f89e` |
| 12 | `instance` | [instDist](../../../../GeneralTopology/MetricSpacePolishPolishSourceEdition1.lean/declarations/instdist.md) | 172 | `declaration-track:f47483f6843ea24b3d939c0b465a1d03a71cc9a07d6b3efddd4d7b93590f8ade` |
| 13 | `theorem` | [dist_eq](../../../../GeneralTopology/MetricSpacePolishPolishSourceEdition1.lean/declarations/dist-eq.md) | 175 | `result-track:f3c93d8662620e8e8755b0c88293bc9ccc1f04a7b006de6bb57fcbf28b6704a7` |
| 14 | `theorem` | [dist_val_le_dist](../../../../GeneralTopology/MetricSpacePolishPolishSourceEdition1.lean/declarations/dist-val-le-dist.md) | 179 | `result-track:95343049383951bb37c010b41fab27add9c6dceca44d17c9152afbaa0fbeca64` |
| 15 | `instance` | [(anonymous)](../../../../GeneralTopology/MetricSpacePolishPolishSourceEdition1.lean/declarations/instance-source-edition-2.md) | 182 | `declaration-track:14d65807ee8efc1ad9108ac7c4e426cae8bc51bda8d2edf0e357890a05bce6cf` |
| 16 | `instance` | [(anonymous)](../../../../GeneralTopology/MetricSpacePolishPolishSourceEdition1.lean/declarations/instance-source-edition-4.md) | 183 | `declaration-track:a9de686c4a551f1e5ed9184094caf143ade86a7735b5c5952763a204d6819cfa` |
| 17 | `instance` | [(anonymous)](../../../../GeneralTopology/MetricSpacePolishPolishSourceEdition1.lean/declarations/instance-source-edition-3.md) | 185 | `declaration-track:a2cad487abadf0da31fd6029afbbeef7834c6fd474f3172f7944f6dcd108616c` |
| 18 | `instance` | [instMetricSpace](../../../../GeneralTopology/MetricSpacePolishPolishSourceEdition1.lean/declarations/instmetricspace.md) | 196 | `declaration-track:07fd0407f766b040a71bbb7e1e83035f760ae0550a706418571dd298e3baa9ba` |
| 19 | `instance` | [instCompleteSpace](../../../../GeneralTopology/MetricSpacePolishPolishSourceEdition1.lean/declarations/instcompletespace.md) | 222 | `declaration-track:3498cd7499ac7feaea71a260aaeccc7edb712b2cc06d73f02ae758b9c3ba4d08` |
| 20 | `theorem` | [_root_.IsOpen.polishSpace](../../../../GeneralTopology/MetricSpacePolishPolishSourceEdition1.lean/declarations/root-isopen-polishspace.md) | 253 | `result-track:8f066686729862e8e50147fed8e11288068c4aa58a03591088df22f6e4da9330` |
| 21 | `def` | [IsClopenable](../../../../GeneralTopology/MetricSpacePolishPolishSourceEdition1.lean/declarations/isclopenable.md) | 270 | `declaration-track:8857e131462353a583c2cf4add4619e702881f53e76ad2b10b21aeee185c0a17` |
| 22 | `theorem` | [_root_.IsClosed.isClopenable](../../../../GeneralTopology/MetricSpacePolishPolishSourceEdition1.lean/declarations/root-isclosed-isclopenable.md) | 275 | `result-track:fcc648472abccc8e466799a3ac145232ca584c9a0da365266a0c15637875c054` |
| 23 | `theorem` | [IsClopenable.compl](../../../../GeneralTopology/MetricSpacePolishPolishSourceEdition1.lean/declarations/isclopenable-compl.md) | 301 | `result-track:f66a3d1ee4752d68d11fb620be706f656529501e551282f36a907cae27912116` |
| 24 | `theorem` | [_root_.IsOpen.isClopenable](../../../../GeneralTopology/MetricSpacePolishPolishSourceEdition1.lean/declarations/root-isopen-isclopenable.md) | 306 | `result-track:53a69e6d42f4a332010e319b2615f73505a0878cc6484fef442baedb873ce041` |
| 25 | `theorem` | [IsClopenable.iUnion](../../../../GeneralTopology/MetricSpacePolishPolishSourceEdition1.lean/declarations/isclopenable-iunion.md) | 311 | `result-track:8a5688d9601e5007aaca089f4633ea41b31f94e7017315e987a0f1c757bf0b17` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=586c5bce9d1423c2f5b046aa5520bf68ae2374874cc92667ad965e084bac81d7 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/Polish/Variantec5f2ea10743b8ca761d2f26478bbef1c95b3c233dc01205089a7dbb7719b613.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/Polish/Variantec5f2ea10743b8ca761d2f26478bbef1c95b3c233dc01205089a7dbb7719b613.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
