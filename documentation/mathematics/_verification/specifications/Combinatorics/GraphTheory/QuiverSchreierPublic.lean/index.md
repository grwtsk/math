# Verification target: Quiver Schreier Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6c3518150cab379b6fbb98ec7d8eb6a050d740a0",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Schreier/Variante4ffee982dc8c0e4a9ff4f78f8087107b8e784569bcbdb8601fce8b1ba163166.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../Combinatorics/GraphTheory/QuiverSchreierPublic.lean/index.md) · [Full source](../../../../../Combinatorics/GraphTheory/QuiverSchreierPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6c3518150cab379b6fbb98ec7d8eb6a050d740a0`.

Source path: `GRWTSK/Algebra/GroupTheory/Schreier/Variante4ffee982dc8c0e4a9ff4f78f8087107b8e784569bcbdb8601fce8b1ba163166.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Schreier/Variante4ffee982dc8c0e4a9ff4f78f8087107b8e784569bcbdb8601fce8b1ba163166.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [SchreierGraph](../../../../../Combinatorics/GraphTheory/QuiverSchreierPublic.lean/declarations/schreiergraph.md) | 68 | `declaration-track:4f9beee8d0fe5a08574986a52f3530d1b08e4196d017c79d9c6df8cd6afe5339` |
| 2 | `def` | [equiv](../../../../../Combinatorics/GraphTheory/QuiverSchreierPublic.lean/declarations/equiv.md) | 82 | `declaration-track:6c47930c8ef95fb1ed9f0cd1ca3035ffd5e6685a92b41a535109660dc6c1473b` |
| 3 | `instance` | [schreierGraphSMul](../../../../../Combinatorics/GraphTheory/QuiverSchreierPublic.lean/declarations/schreiergraphsmul.md) | 89 | `declaration-track:34556d739c7b7ef3c619591446d813f95585f3af4e69279928ad357ed3c30813` |
| 4 | `instance` | [schreierGraphQuiver](../../../../../Combinatorics/GraphTheory/QuiverSchreierPublic.lean/declarations/schreiergraphquiver.md) | 94 | `declaration-track:098f9bb923d6878431512900b1dc49527957700913696905f7ae823b2f2c347c` |
| 5 | `def` | [labelling](../../../../../Combinatorics/GraphTheory/QuiverSchreierPublic.lean/declarations/labelling.md) | 100 | `declaration-track:4e4e8732fe5c6fd488547c79effb23454e581e693fbdc8e10222495623d1160b` |
| 6 | `instance` | [(anonymous)](../../../../../Combinatorics/GraphTheory/QuiverSchreierPublic.lean/declarations/instance.md) | 111 | `declaration-track:f65831e4aeaaa136ccb8b0152b1c86cade042af43778c55694037e4e27fd6a9d` |
| 7 | `def` | [labellingStarEquiv](../../../../../Combinatorics/GraphTheory/QuiverSchreierPublic.lean/declarations/labellingstarequiv.md) | 133 | `declaration-track:0147f9689bf977f6e713fe68e72fe77968bfce9dd3e99353f762163df66d769d` |
| 8 | `def` | [labellingCostarEquiv](../../../../../Combinatorics/GraphTheory/QuiverSchreierPublic.lean/declarations/labellingcostarequiv.md) | 142 | `declaration-track:47a63a3573f1ab255b3c815d3d14ffd696e2654fcfd36974996669bb354c1e19` |
| 9 | `theorem` | [labelling_isCovering](../../../../../Combinatorics/GraphTheory/QuiverSchreierPublic.lean/declarations/labelling-iscovering.md) | 154 | `result-track:9bab9df2186bfc425f8ef183dd687168b4ed419020de55ef2e458867507dd239` |
| 10 | `lemma` | [map_smul_of_comp_labelling_eq](../../../../../Combinatorics/GraphTheory/QuiverSchreierPublic.lean/declarations/map-smul-of-comp-labelling-eq.md) | 161 | `result-track:5c9a73f365fd991f753c940995238cfbf91738a41cba73dc50fff1b7bf390ee2` |
| 11 | `def` | [evalWord](../../../../../Combinatorics/GraphTheory/QuiverSchreierPublic.lean/declarations/evalword.md) | 198 | `declaration-track:0971ebd949f436006c586bb84811272fb7b9e7e51e8be77d95ffef5e71f5fcab` |
| 12 | `theorem` | [evalWord_nil](../../../../../Combinatorics/GraphTheory/QuiverSchreierPublic.lean/declarations/evalword-nil.md) | 201 | `result-track:66ced113969b2b8af1ccb6b47fbf255e5281dc06b65d66f12a5186f5615df9c7` |
| 13 | `theorem` | [evalWord_cons_true](../../../../../Combinatorics/GraphTheory/QuiverSchreierPublic.lean/declarations/evalword-cons-true.md) | 204 | `result-track:f22e96c5a5f533614b3edb706a2b72dd85f41d3f3b71bb8226ec26f6831a4815` |
| 14 | `theorem` | [evalWord_cons_false](../../../../../Combinatorics/GraphTheory/QuiverSchreierPublic.lean/declarations/evalword-cons-false.md) | 208 | `result-track:0359527af14232528ea2698b2b78e38232f609468a902acac939ea239b51392f` |
| 15 | `theorem` | [evalWord_append](../../../../../Combinatorics/GraphTheory/QuiverSchreierPublic.lean/declarations/evalword-append.md) | 211 | `result-track:e000668dc45cd12972aa9f133ae75a20b47d27b3080300d7d06f34dbcff2009f` |
| 16 | `theorem` | [evalWord_mem_closure](../../../../../Combinatorics/GraphTheory/QuiverSchreierPublic.lean/declarations/evalword-mem-closure.md) | 216 | `result-track:812e6a8e407ddb7216fa407cf07e33fb020396594e2d054c7efac424a7d8fc43` |
| 17 | `theorem` | [exists_evalWord_of_mem_closure](../../../../../Combinatorics/GraphTheory/QuiverSchreierPublic.lean/declarations/exists-evalword-of-mem-closure.md) | 222 | `result-track:b0dfdfa56c021c38d009c94e0912221e1420eb9262fb2fb480a2d2db5f8786d7` |
| 18 | `def` | [pathFromWord](../../../../../Combinatorics/GraphTheory/QuiverSchreierPublic.lean/declarations/pathfromword.md) | 245 | `declaration-track:dc43d74ad54e184c6d370d708721904ec46d63a89395d42193225a97c65dfe1d` |
| 19 | `theorem` | [reachable_of_mem_closure](../../../../../Combinatorics/GraphTheory/QuiverSchreierPublic.lean/declarations/reachable-of-mem-closure.md) | 259 | `result-track:9810dc37b7254bc10fb42fc5fb4f9d26867219a083bef9cb1adfb91aaf211bbc` |
| 20 | `theorem` | [exists_mem_closure_of_path](../../../../../Combinatorics/GraphTheory/QuiverSchreierPublic.lean/declarations/exists-mem-closure-of-path.md) | 267 | `result-track:bd7ba7f14c4dfe3d6626bed0f358c9c1db87ea56d1445a39ba8c7e30ebcfbf07` |
| 21 | `theorem` | [reachable_iff](../../../../../Combinatorics/GraphTheory/QuiverSchreierPublic.lean/declarations/reachable-iff.md) | 287 | `result-track:806349da7f5a154862f2b20168716c5d2a560417b1ac6c0cf0746fc41a43a70b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=1ffbaff3efb4895ecd271091fc93ba08a08e5fcc327864aed3cc1c5ce36f3754 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/GroupTheory/Schreier/Variante4ffee982dc8c0e4a9ff4f78f8087107b8e784569bcbdb8601fce8b1ba163166.lean","GRWTSK/_verification/specifications/Algebra/GroupTheory/Schreier/Variante4ffee982dc8c0e4a9ff4f78f8087107b8e784569bcbdb8601fce8b1ba163166.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
