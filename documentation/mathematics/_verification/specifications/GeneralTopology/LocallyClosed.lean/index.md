# Verification target: Locally Closed

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "05a148ad12e4c118a2e944f1c90e5f8efed0bec0",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/LocallyClosed/Variant58499e83515a70b383ef0bc27e0684a38c4bb56314de15817cbb77f9f8eaea6e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GeneralTopology/LocallyClosed.lean/index.md) · [Full source](../../../../GeneralTopology/LocallyClosed.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `05a148ad12e4c118a2e944f1c90e5f8efed0bec0`.

Source path: `GRWTSK/Topology/GeneralTopology/LocallyClosed/Variant58499e83515a70b383ef0bc27e0684a38c4bb56314de15817cbb77f9f8eaea6e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/LocallyClosed/Variant58499e83515a70b383ef0bc27e0684a38c4bb56314de15817cbb77f9f8eaea6e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Constructions` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.TFAE` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [subset_coborder](../../../../GeneralTopology/LocallyClosed.lean/declarations/subset-coborder.md) | 33 | `result-track:92083ba4aab6fbc71c8d9095c9493ef8f34fd570d38c983d755e5371b9a75fdf` |
| 2 | `lemma` | [coborder_inter_closure](../../../../GeneralTopology/LocallyClosed.lean/declarations/coborder-inter-closure.md) | 38 | `result-track:bb6844c6f0341d738a4ffd8f62506b26ad1dc8c803bbf25ba839264077a6279f` |
| 3 | `lemma` | [closure_inter_coborder](../../../../GeneralTopology/LocallyClosed.lean/declarations/closure-inter-coborder.md) | 43 | `result-track:fc29091f3f133047c59090b9cc8906a07f4247e6ea25a737e7853ee034b9c68f` |
| 4 | `lemma` | [coborder_eq_union_frontier_compl](../../../../GeneralTopology/LocallyClosed.lean/declarations/coborder-eq-union-frontier-compl.md) | 47 | `result-track:0fcf1e2e936fc173ad9720c0ef4c6e7620658d2c670502f9cd76045c6b38b4db` |
| 5 | `lemma` | [coborder_eq_univ_iff](../../../../GeneralTopology/LocallyClosed.lean/declarations/coborder-eq-univ-iff.md) | 52 | `result-track:1fa4feedf40d1627ec0ce0855d0a6abc4462f0890243477d27f055d16ef3ef01` |
| 6 | `lemma` | [coborder_eq_compl_frontier_iff](../../../../GeneralTopology/LocallyClosed.lean/declarations/coborder-eq-compl-frontier-iff.md) | 58 | `result-track:a1bee6ea52109ffd298ea12a398092dda74ff9e1d8383c06229fa164089868da` |
| 7 | `theorem` | [coborder_eq_union_closure_compl](../../../../GeneralTopology/LocallyClosed.lean/declarations/coborder-eq-union-closure-compl.md) | 63 | `result-track:2501c8e1e72f3c1ccb64b3149a472af70a0a612937e5c274c7147b59c1c8da6b` |
| 8 | `theorem` | [dense_coborder](../../../../GeneralTopology/LocallyClosed.lean/declarations/dense-coborder.md) | 68 | `result-track:291486b598f3f4d577244301265a0d644a5d191cbcf9826227ce718c0d165506` |
| 9 | `lemma` | [IsOpenMap.coborder_preimage_subset](../../../../GeneralTopology/LocallyClosed.lean/declarations/isopenmap-coborder-preimage-subset.md) | 76 | `result-track:aca882dbd10f7f127bf39e7de7acb935a4c28dcd760e378d6ef7a49bf4373ffb` |
| 10 | `lemma` | [Continuous.preimage_coborder_subset](../../../../GeneralTopology/LocallyClosed.lean/declarations/continuous-preimage-coborder-subset.md) | 82 | `result-track:6978bc272e55de8110fc50bdafa2bf695a794272f0374e6f85b667381c29b28a` |
| 11 | `lemma` | [coborder_preimage](../../../../GeneralTopology/LocallyClosed.lean/declarations/coborder-preimage.md) | 88 | `result-track:67324d5bc8615b58bb683d345b80ec6523c5c8783c59767259a0632626c1fa65` |
| 12 | `lemma` | [Topology.IsOpenEmbedding.coborder_preimage](../../../../GeneralTopology/LocallyClosed.lean/declarations/topology-isopenembedding-coborder-preimage.md) | 93 | `result-track:53996651a0a581a22a0253d76962653857c779470884612d3d895636f226d24b` |
| 13 | `lemma` | [isClosed_preimage_val_coborder](../../../../GeneralTopology/LocallyClosed.lean/declarations/isclosed-preimage-val-coborder.md) | 97 | `result-track:fa13eed9896e2f62931ba653d6dcfa4f6cfa36d171d76df7e7c9a56d611b380a` |
| 14 | `lemma` | [IsLocallyClosed.inter](../../../../GeneralTopology/LocallyClosed.lean/declarations/islocallyclosed-inter.md) | 101 | `result-track:9675b08fa28c84f3463c28e57bf75a701835a7e40269406e38a460e6627fd799` |
| 15 | `lemma` | [IsLocallyClosed.preimage](../../../../GeneralTopology/LocallyClosed.lean/declarations/islocallyclosed-preimage.md) | 107 | `result-track:fcae65b3b9f28bfba9e50817311a6f2dc45f19b2a9e57c4e53a6217c01ddcb2f` |
| 16 | `lemma` | [Topology.IsInducing.isLocallyClosed_iff](../../../../GeneralTopology/LocallyClosed.lean/declarations/topology-isinducing-islocallyclosed-iff.md) | 114 | `result-track:775bc188f667d929b4797ac31db6317156970473c82b2f942a8d55c35b1fcc25` |
| 17 | `lemma` | [Topology.IsEmbedding.isLocallyClosed_iff](../../../../GeneralTopology/LocallyClosed.lean/declarations/topology-isembedding-islocallyclosed-iff.md) | 127 | `result-track:0adc3e1de5c6cc1036bc236d99cb115c52c439568a050db39bab4803ad35ed53` |
| 18 | `lemma` | [IsLocallyClosed.image](../../../../GeneralTopology/LocallyClosed.lean/declarations/islocallyclosed-image.md) | 136 | `result-track:3e6d3f7709d721b140136dd9e4f95257fb92d9fcbf15e921543fe8256c628a33` |
| 19 | `lemma` | [isLocallyClosed_tfae](../../../../GeneralTopology/LocallyClosed.lean/declarations/islocallyclosed-tfae.md) | 151 | `result-track:f35624f3300ea25366924c637354e0d016b3229f6d4701b24fdddcad50d4bfd2` |
| 20 | `lemma` | [isLocallyClosed_iff_isOpen_coborder](../../../../GeneralTopology/LocallyClosed.lean/declarations/islocallyclosed-iff-isopen-coborder.md) | 190 | `result-track:48e61e7ff778eaf0a759c46b24119b2db5fa36762ae7fab102eea1ea7b8c8395` |
| 21 | `lemma` | [IsLocallyClosed.isOpen_preimage_val_closure](../../../../GeneralTopology/LocallyClosed.lean/declarations/islocallyclosed-isopen-preimage-val-closure.md) | 195 | `result-track:3fc45482d0d1833655c5fe5e64b344b7b561f439548b74350d1dd02fc28c4962` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=193877e230cde4299f41693019716adc1fbb3edbcddfd89d97dedd2ada74d6f0 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/LocallyClosed/Variant58499e83515a70b383ef0bc27e0684a38c4bb56314de15817cbb77f9f8eaea6e.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/LocallyClosed/Variant58499e83515a70b383ef0bc27e0684a38c4bb56314de15817cbb77f9f8eaea6e.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
