# Verification target: Erdos Stone Simonovits Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3ab120db2b6e3b3a0eba4eca23a935f75bbb61b3",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/ErdosStoneSimonovits/Variant7d3e8dfbddda133a2a92831ef5b077f9f258e1dd4335b914ea202178a05d75eb.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../Combinatorics/GraphTheory/ErdosStoneSimonovitsPublic.lean/index.md) · [Full source](../../../../../Combinatorics/GraphTheory/ErdosStoneSimonovitsPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3ab120db2b6e3b3a0eba4eca23a935f75bbb61b3`.

Source path: `GRWTSK/Topology/GeneralTopology/ErdosStoneSimonovits/Variant7d3e8dfbddda133a2a92831ef5b077f9f258e1dd4335b914ea202178a05d75eb.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/ErdosStoneSimonovits/Variant7d3e8dfbddda133a2a92831ef5b077f9f258e1dd4335b914ea202178a05d75eb.lean.json)

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
| 1 | `def` | [filter](../../../../../Combinatorics/GraphTheory/ErdosStoneSimonovitsPublic.lean/declarations/filter.md) | 41 | `declaration-track:73ecf4132eca8108ef66db6360f32de72e63bbd2628fada1a4fb2d7ee1e130da` |
| 2 | `theorem` | [filter_subset_compl_verts](../../../../../Combinatorics/GraphTheory/ErdosStoneSimonovitsPublic.lean/declarations/filter-subset-compl-verts.md) | 44 | `result-track:e8ad6eac8472860dbe764d71691b420fb1947ed8cc4c2b14a017b3c3d3f3412e` |
| 3 | `theorem` | [between_verts_isBipartiteWith](../../../../../Combinatorics/GraphTheory/ErdosStoneSimonovitsPublic.lean/declarations/between-verts-isbipartitewith.md) | 48 | `result-track:df0b29a1243ac91adc4440ebea664112788cf7e580914db0fc11d54b228a9986` |
| 4 | `lemma` | [le_card_edgeFinset_between_verts](../../../../../Combinatorics/GraphTheory/ErdosStoneSimonovitsPublic.lean/declarations/le-card-edgefinset-between-verts.md) | 53 | `result-track:b4ae73b0f08b0813bb155dbe1257d632ca120486b0d77d20929f94624013e1b3` |
| 5 | `lemma` | [degree_between_verts_lt_of_mem_sdiff](../../../../../Combinatorics/GraphTheory/ErdosStoneSimonovitsPublic.lean/declarations/degree-between-verts-lt-of-mem-sdiff.md) | 66 | `result-track:e2a999837a624bcde9db3853097d4198908d487c04b88da89a7921ac2da44f58` |
| 6 | `lemma` | [card_edgeFinset_between_verts_le](../../../../../Combinatorics/GraphTheory/ErdosStoneSimonovitsPublic.lean/declarations/card-edgefinset-between-verts-le.md) | 95 | `result-track:721c0283c9f8d6c36f2ee034531f42362a586e04cffcb401b24ab185bd0c2817` |
| 7 | `lemma` | [mul_le_card_filter_mul](../../../../../Combinatorics/GraphTheory/ErdosStoneSimonovitsPublic.lean/declarations/mul-le-card-filter-mul.md) | 123 | `result-track:965bc92fded51a19737afdb35af01c4481b748fd55dff1394c67e65a84077e4f` |
| 8 | `def` | [filter.pi](../../../../../Combinatorics/GraphTheory/ErdosStoneSimonovitsPublic.lean/declarations/filter-pi.md) | 149 | `declaration-track:0e1349f5a9b9302f4d5b0d5891a099532e0a579fb9eb2e695925d4506909d912` |
| 9 | `theorem` | [filter.pi.mem_val](../../../../../Combinatorics/GraphTheory/ErdosStoneSimonovitsPublic.lean/declarations/filter-pi-mem-val.md) | 155 | `result-track:18b20924a14881a90152dd218ca3d7c2838db8bf4641821528b7736d7ed171e1` |
| 10 | `theorem` | [filter.pi.exists_le_card_fiber](../../../../../Combinatorics/GraphTheory/ErdosStoneSimonovitsPublic.lean/declarations/filter-pi-exists-le-card-fiber.md) | 164 | `result-track:d6eb820904f11c7ce2cc4ece4e1d58d2161afedfc331f4ca6790b095ad5c28eb` |
| 11 | `theorem` | [eventually_completeEquipartiteGraph_isContained_of_minDegree](../../../../../Combinatorics/GraphTheory/ErdosStoneSimonovitsPublic.lean/declarations/eventually-completeequipartitegraph-iscontained-of-mindegree.md) | 196 | `result-track:154883a4b79dd1319bd6d11d31ac463d29df7b3d133c04a90bc18b39b614ba8c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=6ae2da48220c45227b437aed9e165bddd6369bba63038cfd82d201ba70ab1214 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/ErdosStoneSimonovits/Variant7d3e8dfbddda133a2a92831ef5b077f9f258e1dd4335b914ea202178a05d75eb.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/ErdosStoneSimonovits/Variant7d3e8dfbddda133a2a92831ef5b077f9f258e1dd4335b914ea202178a05d75eb.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
