# Verification target: GRWTSK.Topology.GeneralTopology.Subcomplex.Variant9af954798e2acf3c4a5e4214c5b0cba450aa0286cd9a57b4fbfb5728e6b19ed5

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6123a3f471459eb957a0086221dd36b1cefa9c05",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Subcomplex/Variant9af954798e2acf3c4a5e4214c5b0cba450aa0286cd9a57b4fbfb5728e6b19ed5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Subcomplex/Variant9af954798e2acf3c4a5e4214c5b0cba450aa0286cd9a57b4fbfb5728e6b19ed5.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Subcomplex/Variant9af954798e2acf3c4a5e4214c5b0cba450aa0286cd9a57b4fbfb5728e6b19ed5.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6123a3f471459eb957a0086221dd36b1cefa9c05`.

Source path: `GRWTSK/Topology/GeneralTopology/Subcomplex/Variant9af954798e2acf3c4a5e4214c5b0cba450aa0286cd9a57b4fbfb5728e6b19ed5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Subcomplex/Variant9af954798e2acf3c4a5e4214c5b0cba450aa0286cd9a57b4fbfb5728e6b19ed5.lean.json)

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
| 1 | `lemma` | [RelCWComplex.Subcomplex.closedCell_subset_of_mem](../../../../../mathematics/Topology/GeneralTopology/Subcomplex/Variant9af954798e2acf3c4a5e4214c5b0cba450aa0286cd9a57b4fbfb5728e6b19ed5.lean/declarations/relcwcomplex-subcomplex-closedcell-subset-of-mem--4462c94b19f0b78a8808245c.md) | 36 | `result-track:4462c94b19f0b78a8808245c623ea99632d3384a85f4c535be08ec621b67ea28` |
| 2 | `lemma` | [RelCWComplex.Subcomplex.openCell_subset_of_mem](../../../../../mathematics/Topology/GeneralTopology/Subcomplex/Variant9af954798e2acf3c4a5e4214c5b0cba450aa0286cd9a57b4fbfb5728e6b19ed5.lean/declarations/relcwcomplex-subcomplex-opencell-subset-of-mem--01e583198f47411bdd06a28b.md) | 45 | `result-track:01e583198f47411bdd06a28b02559e1356977b36f06b46ca4855dd029ffd6fd3` |
| 3 | `lemma` | [RelCWComplex.Subcomplex.cellFrontier_subset_of_mem](../../../../../mathematics/Topology/GeneralTopology/Subcomplex/Variant9af954798e2acf3c4a5e4214c5b0cba450aa0286cd9a57b4fbfb5728e6b19ed5.lean/declarations/relcwcomplex-subcomplex-cellfrontier-subset-of-mem--ae0dfcbdac404d9b206ff99b.md) | 51 | `result-track:ae0dfcbdac404d9b206ff99b1c246f3b1b32e2a3c7a9dc4ccba653d8ad2b0e72` |
| 4 | `lemma` | [RelCWComplex.Subcomplex.union_closedCell](../../../../../mathematics/Topology/GeneralTopology/Subcomplex/Variant9af954798e2acf3c4a5e4214c5b0cba450aa0286cd9a57b4fbfb5728e6b19ed5.lean/declarations/relcwcomplex-subcomplex-union-closedcell--6b91765cb96a971b2821720d.md) | 57 | `result-track:6b91765cb96a971b2821720df6fbdee765925024200a1811bd1d2770ab1953b4` |
| 5 | `lemma` | [CWComplex.Subcomplex.union_closedCell](../../../../../mathematics/Topology/GeneralTopology/Subcomplex/Variant9af954798e2acf3c4a5e4214c5b0cba450aa0286cd9a57b4fbfb5728e6b19ed5.lean/declarations/cwcomplex-subcomplex-union-closedcell--8863502a7f6f6d63d17cdc9b.md) | 68 | `result-track:8863502a7f6f6d63d17cdc9b66bc496a36dbb7effa808617267139429702ef9f` |
| 6 | `lemma` | [RelCWComplex.Subcomplex.disjoint_openCell_subcomplex_of_not_mem](../../../../../mathematics/Topology/GeneralTopology/Subcomplex/Variant9af954798e2acf3c4a5e4214c5b0cba450aa0286cd9a57b4fbfb5728e6b19ed5.lean/declarations/relcwcomplex-subcomplex-disjoint-opencell-subcomplex-of-not-mem--c78101a186d7e6a7cb297bc7.md) | 73 | `result-track:c78101a186d7e6a7cb297bc7b24a1758f1890aaceccba2dfd34c91fa5d9093e8` |
| 7 | `instance` | [RelCWComplex.Subcomplex.instRelCWComplex](../../../../../mathematics/Topology/GeneralTopology/Subcomplex/Variant9af954798e2acf3c4a5e4214c5b0cba450aa0286cd9a57b4fbfb5728e6b19ed5.lean/declarations/relcwcomplex-subcomplex-instrelcwcomplex--41de0c1bc18d979f7ebfa967.md) | 81 | `declaration-track:41de0c1bc18d979f7ebfa96746fb9b45732d85353569495a82f8989b0bbec07e` |
| 8 | `instance` | [CWComplex.Subcomplex.instCWComplex](../../../../../mathematics/Topology/GeneralTopology/Subcomplex/Variant9af954798e2acf3c4a5e4214c5b0cba450aa0286cd9a57b4fbfb5728e6b19ed5.lean/declarations/cwcomplex-subcomplex-instcwcomplex--80a59486eaf096fab7c8d776.md) | 120 | `declaration-track:80a59486eaf096fab7c8d7764621cbd072eb578a72e6525fc150afc3b180b2c5` |
| 9 | `lemma` | [CWComplex.Subcomplex.cell_def](../../../../../mathematics/Topology/GeneralTopology/Subcomplex/Variant9af954798e2acf3c4a5e4214c5b0cba450aa0286cd9a57b4fbfb5728e6b19ed5.lean/declarations/cwcomplex-subcomplex-cell-def--57aa7ea4a0d41458bfdb5c9e.md) | 125 | `result-track:57aa7ea4a0d41458bfdb5c9eadf8682cc9b5ecbaac267fe89226b927d1135c0b` |
| 10 | `lemma` | [CWComplex.Subcomplex.map_def](../../../../../mathematics/Topology/GeneralTopology/Subcomplex/Variant9af954798e2acf3c4a5e4214c5b0cba450aa0286cd9a57b4fbfb5728e6b19ed5.lean/declarations/cwcomplex-subcomplex-map-def--c518f61521ea83cfc10f2f26.md) | 130 | `result-track:c518f61521ea83cfc10f2f26594f5d15cd20820f9678d7709ca473eeb520fbba` |
| 11 | `lemma` | [RelCWComplex.Subcomplex.openCell_eq](../../../../../mathematics/Topology/GeneralTopology/Subcomplex/Variant9af954798e2acf3c4a5e4214c5b0cba450aa0286cd9a57b4fbfb5728e6b19ed5.lean/declarations/relcwcomplex-subcomplex-opencell-eq--3f030e4c9531392ec71108f7.md) | 135 | `result-track:3f030e4c9531392ec71108f7f9f713c07ff0cfef4d0d41ac8d2a3846b5800f46` |
| 12 | `lemma` | [RelCWComplex.Subcomplex.closedCell_eq](../../../../../mathematics/Topology/GeneralTopology/Subcomplex/Variant9af954798e2acf3c4a5e4214c5b0cba450aa0286cd9a57b4fbfb5728e6b19ed5.lean/declarations/relcwcomplex-subcomplex-closedcell-eq--2127dbf2a7fcb112334cccbe.md) | 140 | `result-track:2127dbf2a7fcb112334cccbecb439352535fbcbe01a3edd9db2c8c235ef7c840` |
| 13 | `lemma` | [RelCWComplex.Subcomplex.cellFrontier_eq](../../../../../mathematics/Topology/GeneralTopology/Subcomplex/Variant9af954798e2acf3c4a5e4214c5b0cba450aa0286cd9a57b4fbfb5728e6b19ed5.lean/declarations/relcwcomplex-subcomplex-cellfrontier-eq--46be30c424e4cc03324ac73e.md) | 145 | `result-track:46be30c424e4cc03324ac73e954648176498974e2b5e593333ca02baf2407e56` |
| 14 | `instance` | [RelCWComplex.Subcomplex.finiteType_subcomplex_of_finiteType](../../../../../mathematics/Topology/GeneralTopology/Subcomplex/Variant9af954798e2acf3c4a5e4214c5b0cba450aa0286cd9a57b4fbfb5728e6b19ed5.lean/declarations/relcwcomplex-subcomplex-finitetype-subcomplex-of-finitetype--26c08f972f155bc1a7b12fdb.md) | 150 | `declaration-track:26c08f972f155bc1a7b12fdb0c1c566127f3229f225d9bb250a2babda1be9504` |
| 15 | `instance` | [RelCWComplex.Subcomplex.finiteDimensional_subcomplex_of_finiteDimensional](../../../../../mathematics/Topology/GeneralTopology/Subcomplex/Variant9af954798e2acf3c4a5e4214c5b0cba450aa0286cd9a57b4fbfb5728e6b19ed5.lean/declarations/relcwcomplex-subcomplex-finitedimensional-subcomplex-of-finitedimensiona--5cba36689197b05c238e0f5e.md) | 157 | `declaration-track:5cba36689197b05c238e0f5e3fa6cb546954aa824521f1e6615e368a541d5ef9` |
| 16 | `instance` | [RelCWComplex.Subcomplex.finite_subcomplex_of_finite](../../../../../mathematics/Topology/GeneralTopology/Subcomplex/Variant9af954798e2acf3c4a5e4214c5b0cba450aa0286cd9a57b4fbfb5728e6b19ed5.lean/declarations/relcwcomplex-subcomplex-finite-subcomplex-of-finite--bf647280433ce3c2d00d7f88.md) | 166 | `declaration-track:bf647280433ce3c2d00d7f88d2474e6305ce8813dd3d9083f474cd980c123dc2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
